import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:http/http.dart' as http;
import 'package:package_info_plus/package_info_plus.dart';

/// 마켓 스토어 타입
enum StoreMarket { GooglePlayStore, ApkPure }

/// 앱 버전 체크
///
/// [currentVersion] : 현재 앱 버전
///
/// [appId] : 앱 아이디
///
/// [storeMarket] : 마켓 스토어 타입
class AppVersionCheck {
  final String? currentVersion;
  final String? appId;
  final StoreMarket storeMarket;

  AppVersionCheck({
    this.currentVersion,
    this.appId,
    this.storeMarket = StoreMarket.GooglePlayStore,
  });

  Future<AppCheckerResult> checkUpdate() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final currentVersionTemp = currentVersion ?? packageInfo.version;
    final packageNameTemp = appId ?? packageInfo.packageName;

    if (Platform.isAndroid) {
      switch (storeMarket) {
        case StoreMarket.ApkPure:
          return await _checkApkPureStore(currentVersionTemp, packageNameTemp);
        default:
          return await _checkPlayStore(currentVersionTemp, packageNameTemp);
      }
    } else if (Platform.isIOS) {
      return await _checkAppleStore(currentVersionTemp, packageNameTemp);
    } else {
      return AppCheckerResult(currentVersionTemp, null, '',
          '대상 플랫폼 "${Platform.operatingSystem}"은 이 패키지에서 아직 지원하지 않습니다');
    }
  }

  Future<AppCheckerResult> _checkAppleStore(
    String currentVersion,
    String packageName,
  ) async {
    String? errorMsg;
    String? newVersion;
    String? url;
    final uri =
        Uri.https('itunes.apple.com', '/lookup', {'bundleId': packageName});

    try {
      final response = await http.get(uri);

      if (response.statusCode != 200) {
        errorMsg = 'ID가 $packageName인 앱을 Apple Store에서 찾을 수 없습니다';
      } else {
        final jsonObj = jsonDecode(response.body);
        final List<dynamic> results = jsonObj['results'] as List<dynamic>;

        if (results.isEmpty) {
          errorMsg = 'ID가 $packageName인 앱을 Apple Store에서 찾을 수 없습니다';
        } else {
          newVersion = jsonObj['results'][0]['version'].toString();
          url = jsonObj['results'][0]['trackViewUrl'].toString();
        }
      }
    } catch (e) {
      errorMsg = '$e';
    }

    return AppCheckerResult(
      currentVersion,
      newVersion,
      url,
      errorMsg,
    );
  }

  Future<AppCheckerResult> _checkPlayStore(
    String currentVersion,
    String packageName,
  ) async {
    String? errorMsg;
    String? newVersion;
    String? url;
    final uri = Uri.https(
        'play.google.com', '/store/apps/details', {'id': packageName});

    try {
      final response = await http.get(uri);

      if (response.statusCode != 200) {
        errorMsg = 'Google Play Store에서 $packageName 앱을 찾을 수 없습니다';
      } else {
        newVersion = RegExp(r',\[\[\["([0-9,\.]*)"]],')
            .firstMatch(response.body)!
            .group(1);
        url = uri.toString();
      }
    } catch (e) {
      errorMsg = '$e';
    }

    return AppCheckerResult(
      currentVersion,
      newVersion,
      url,
      errorMsg,
    );
  }
}

Future<AppCheckerResult> _checkApkPureStore(
  String currentVersion,
  String packageName,
) async {
  String? errorMsg;
  String? newVersion;
  String? url;
  final Uri uri = Uri.https('apkpure.com', '$packageName/$packageName');

  try {
    final response = await http.get(uri);

    if (response.statusCode != 200) {
      errorMsg = 'ApkPure에서 $packageName 앱을 찾을 수 없습니다';
    } else {
      newVersion = RegExp(
              r'<div class="details-sdk"><span itemprop="version">(.*?)<\/span>for Android<\/div>')
          .firstMatch(response.body)!
          .group(1)!
          .trim();
      url = uri.toString();
    }
  } catch (e) {
    errorMsg = '$e';
  }

  return AppCheckerResult(
    currentVersion,
    newVersion,
    url,
    errorMsg,
  );
}

class AppCheckerResult {
  final String currentVersion;
  final String? newVersion;
  final String? appURL;
  final String? errorMessage;

  AppCheckerResult(
    this.currentVersion,
    this.newVersion,
    this.appURL,
    this.errorMessage,
  );

  bool get canUpdate =>
      _shouldUpdate(currentVersion, newVersion ?? currentVersion);

  bool _shouldUpdate(String versionA, String versionB) {
    final versionNumbersA =
        versionA.split('.').map((e) => int.tryParse(e) ?? 0).toList();
    final versionNumbersB =
        versionB.split('.').map((e) => int.tryParse(e) ?? 0).toList();

    final int versionASize = versionNumbersA.length;
    final int versionBSize = versionNumbersB.length;
    final int maxSize = math.max(versionASize, versionBSize);

    for (int i = 0; i < maxSize; i++) {
      if ((i < versionASize ? versionNumbersA[i] : 0) >
          (i < versionBSize ? versionNumbersB[i] : 0)) {
        return false;
      } else if ((i < versionASize ? versionNumbersA[i] : 0) <
          (i < versionBSize ? versionNumbersB[i] : 0)) {
        return true;
      }
    }
    return false;
  }

  @override
  String toString() {
    return '현재 버전: $currentVersion\n새 버전: $newVersion\n앱 URL: $appURL\n업데이트 가능: $canUpdate\n오류: $errorMessage';
  }
}
