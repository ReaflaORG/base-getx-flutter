// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'dart:ui';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

// 파이어베이스 클라우드 메시징 서비스
class FirebaseCloudMessagingService extends GetxService {
  static FirebaseCloudMessagingService get to => Get.find();

  /// [Variable] ▼

  /// AndroidNotificationChannel
  /// id: 임의 ID
  /// name: 설정에 보일 채널명
  /// description: 설정에 보일 채널 설명
  /// importance: Android 알림에 사용 가능한 중요도 수준 (Android 8.0 이상)
  /// playSound(default: true): 알림 사운드 설정
  /// sound: 알림 사운드 여부
  /// enableVibration(default: true): 지정된 채널에 연결되어 있으며 처음 채널을 만든 후에는 변경할 수 없습니다.
  /// vibrationPattern: 진동 패턴
  /// showBadge(default: true): 이 채널에 게시된 알림을 실행기에서 애플리케이션 아이콘 배지로 표시할 수 있는지 여부
  /// enableLights(default: false):
  /// ledColor:
  AndroidNotificationChannel channel = const AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notifications.',
    importance: Importance.high,
    playSound: true,
    showBadge: true,
    enableLights: true,
  );
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  InitializationSettings initializationSettings = const InitializationSettings(
    android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    iOS: DarwinInitializationSettings(),
  );

  Rx<RemoteMessage> message = const RemoteMessage().obs;

  /// [Function] ▼

  /// 초기화
  Future<void> handleInitialize() async {
    await Future.wait([
      /// Android Notification Plugin
      () async {
        flutterLocalNotificationsPlugin
            .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin>()
            ?.createNotificationChannel(channel);
      }(),

      /// 권한 셋팅
      () async {
        flutterLocalNotificationsPlugin.initialize(initializationSettings);
      }(),

      /// 옵션 설정
      handleSetForegroundNotificationPresentationOptions(),

      /// FCM 토큰 저장
      handleGetStorage(),

      /// 포그라운드 메세지 처리
      handleOnForegroundMessageSettings(
        initializationSettings: initializationSettings,
        flutterLocalNotificationsPlugin: flutterLocalNotificationsPlugin,
        channel: channel,
      ),

      /// 백그라운드일때 메세지가 오면 호출
      () async {
        FirebaseMessaging.onBackgroundMessage(handleOnBackgroundMessage);
      }(),

      /// 백그라운드 상태에서 알림 메세지를 사용자가 눌렀을때
      () async {
        FirebaseMessaging.onMessageOpenedApp.listen(
          (message) async =>
              await handleOnBackgroundMessageOpenedApp(message: message),
        );
      }()
    ]).then((value) {
      // handleOnForegroundMessageSettings(
      //   initializationSettings: initializationSettings,
      //   flutterLocalNotificationsPlugin: flutterLocalNotificationsPlugin,
      //   channel: channel,
      // );
    });

    /// Android Notification Plugin
    // await flutterLocalNotificationsPlugin
    //     .resolvePlatformSpecificImplementation<
    //         AndroidFlutterLocalNotificationsPlugin>()
    //     ?.createNotificationChannel(channel);

    // /// 권한 셋팅
    // await flutterLocalNotificationsPlugin.initialize(initializationSettings);

    // /// 옵션 설정
    // await handleSetForegroundNotificationPresentationOptions();

    // /// FCM 토큰 저장
    // await handleGetStorage();

    // /// 포그라운드 메세지 처리
    // handleOnForegroundMessageSettings(
    //   initializationSettings: initializationSettings,
    //   flutterLocalNotificationsPlugin: flutterLocalNotificationsPlugin,
    //   channel: channel,
    // );
    // FirebaseMessaging.onMessage.listen(
    //   (RemoteMessage message) async {
    //     // 메세지가 온 경우에만 체크
    //     if (message.notification != null) {
    //       // 메세지 출력 부분
    //       await flutterLocalNotificationsPlugin.show(
    //         message.notification!.hashCode,
    //         message.notification!.title,
    //         message.notification!.body,
    //         NotificationDetails(
    //           android: AndroidNotificationDetails(
    //             channel.id,
    //             channel.name,
    //             channelDescription: channel.description.toString(),
    //             icon: '@mipmap/ic_launcher',
    //             importance: Importance.high,
    //           ),
    //           iOS: const IOSNotificationDetails(
    //             presentAlert: true,
    //             presentBadge: true,
    //             presentSound: true,
    //           ),
    //         ),
    //       );

    //       /// 포그라운드 상태에서 알림 메세지를 사용자가 눌렀을때
    //       await flutterLocalNotificationsPlugin.initialize(
    //           initializationSettings, onSelectNotification: (payload) {
    //         if (payload != null) {
    //           // Get.to(const NextPage(), arguments: payload);
    //           handleOnForegroundMessageOpenedApp(message: message);
    //         }
    //       });

    //       await handleOnForegroundMessage(message: message);
    //     }
    //   },
    // );

    // /// 백그라운드일때 메세지가 오면 호출
    // FirebaseMessaging.onBackgroundMessage(handleOnBackgroundMessage);

    // /// 백그라운드 상태에서 알림 메세지를 사용자가 눌렀을때
    // FirebaseMessaging.onMessageOpenedApp.listen((message) async =>
    //     await handleOnBackgroundMessageOpenedApp(message: message));
  }

  @override
  Future<void> onInit() async {
    super.onInit();
  }
}

/// 옵션 설정
Future<void> handleSetForegroundNotificationPresentationOptions() async {
  final NotificationSettings settings =
      await FirebaseMessaging.instance.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  Logger().d('''
  [FCM] IOS TEST 권한동의
  alert : ${settings.alert}
  announcement: ${settings.announcement}
  badge: ${settings.badge}
  carPlay: ${settings.carPlay}
  criticalAlert: ${settings.criticalAlert}
  authorizationStatus: ${settings.authorizationStatus}
  lockScreen: ${settings.lockScreen}
  notificationCenter: ${settings.notificationCenter}
  showPreviews: ${settings.showPreviews}
  timeSensitive: ${settings.timeSensitive}
  sound: ${settings.sound}''');
}

/// FCM 토큰 저장
Future<void> handleGetStorage() async {
  final String? token = await FirebaseMessaging.instance.getToken();
  GetStorage().write('fcm_token', token);
  Logger().d('''
[FCM] FCM 토큰
TOKEN : $token''');
}

/// 포그라운드 메세지 처리
Future<void> handleOnForegroundMessageSettings({
  required initializationSettings,
  required flutterLocalNotificationsPlugin,
  required channel,
}) async =>
    FirebaseMessaging.onMessage.listen(
      (
        RemoteMessage message,
      ) async {
        final AndroidNotification? android = message.notification?.android;
        final AppleNotification? apple = message.notification?.apple;

        Logger().d('''
[AOS]
channelId : ${android?.channelId}
clickAction : ${android?.clickAction}
color : ${android?.color}
count : ${android?.count}
imageUrl : ${android?.imageUrl}
link : ${android?.link}
priority : ${android?.priority}
smallIcon : ${android?.smallIcon}
sound : ${android?.sound}
tag : ${android?.tag}
ticker : ${android?.ticker}
visibility : ${android?.visibility}

[IOS]
badge : ${apple?.badge}
imageUrl : ${apple?.imageUrl}
sound : ${apple?.sound}
subtitle : ${apple?.subtitle}
subtitleLocArgs : ${apple?.subtitleLocArgs}
subtitleLocKey : ${apple?.subtitleLocKey}

[default]
data : ${message.data}
category : ${message.category}
collapseKey : ${message.collapseKey}
contentAvailable : ${message.contentAvailable}
from : ${message.from}
messageId : ${message.messageId}
messageType : ${message.messageType}
mutableContent : ${message.mutableContent}

[notification]
title : ${message.notification?.title}
titleLocArgs : ${message.notification?.titleLocArgs}
titleLocKey : ${message.notification?.titleLocKey}
body : ${message.notification?.body}
bodyLocArgs : ${message.notification?.bodyLocArgs}
bodyLocKey : ${message.notification?.bodyLocKey}
web : ${message.notification?.web}
''');

        // 메세지가 온 경우에만 체크
        if (message.notification != null) {
          FirebaseCloudMessagingService.to.message.value = message;

          // 메세지 출력 부분
          if (Platform.isAndroid) {
            await flutterLocalNotificationsPlugin.show(
              message.notification!.hashCode,
              message.notification!.title,
              message.notification!.body,
              NotificationDetails(
                android: AndroidNotificationDetails(
                  // 채널 아이디
                  channel.id.toString(),
                  // 채널 이름
                  channel.name.toString(),
                  // 채널 설명
                  channelDescription: channel.description.toString(),
                  // 알림 중요도
                  importance: Importance.high,
                  // 아이콘
                  icon: android?.smallIcon ?? '@mipmap/ic_launcher',
                  // 아이콘 색상
                  color: Color(int.parse(android?.color ?? '0XFF000000')),
                  // 푸시 알림음
                  // sound: const RawResourceAndroidNotificationSound('default'),
                ),
                iOS: const DarwinNotificationDetails(
                  presentAlert: true,
                  presentBadge: true,
                  presentSound: true,
                ),
              ),
            );
          }

          /// 포그라운드 상태에서 알림 메세지를 사용자가 눌렀을때
          await handleOnForegroundMessage(message: message);
          flutterLocalNotificationsPlugin.initialize(
            initializationSettings,
            onDidReceiveNotificationResponse: (details) {
              // ignore: unnecessary_null_comparison
              if (details != null) {
                handleOnForegroundMessageOpenedApp(message: message);
              }
            },
          );
        }
      },
    );

// 백 포그라운드 메세지 ====================
// senderId: 업스트림 발신자 위치의 ID입니다.
// category: 이 알림이 할당된 iOS 카테고리입니다.
// collapseKey: 메시지가 전송된 축소 키입니다. 동일한 키로 기존 메시지를 재정의하는 데 사용됩니다.
// contentAvailable(default: false): iOS APN 메시지가 백그라운드 업데이트 알림으로 구성되었는지 여부입니다.
// data(const <String, dynamic>{}): 메시지와 함께 전송된 추가 데이터입니다.
// from: 주제 이름 또는 메시지 식별자입니다.
// messageId: 모든 메시지에 할당된 고유 ID입니다.
// messageType: 메시지 유형입니다.
// mutableContent(false):
// notification: 메시지의 iOS APN mutable-content 속성이 앱이 앱 확장을 통해 알림을 수정할 수 있도록 설정되었는지 여부입니다.
// sentTime: 메시지가 전송된 시간으로 [DateTime]으로 표시됩니다.
// threadId: 알림 그룹화에 사용되는 iOS 앱 고유 식별자입니다.
// ttl: 메시지의 TTL(초)입니다.

/// 포그라운드 상태에서 메세지가 호출되었을때
Future<void> handleOnForegroundMessage({
  required RemoteMessage message,
}) async {
  if (message.notification != null) {
    Logger().d('[FCM] 앱 포그라운드 상태 메세지 : ${message.messageId}');
  }

  return;
}

Future<void> handleOnForegroundMessageOpenedApp({
  required RemoteMessage message,
}) async {
  Logger().d('[FCM] 앱 포그라운드 알림 메세지 클릭 : ${message.data}');

  if (message.data != null) {
    // MainController.to.handleWebViewControllerLoadURL(message: message);
  }
}

/// 백그라운드 메세지
Future<void> handleOnBackgroundMessage(RemoteMessage message) async {
  if (message.notification != null) {
    Logger().d('[FCM] 앱 백그라운드 상태 메세지 : ${message.messageId}');
  }

  return;
}

/// 백그라운드 상태에서 알림 메세지를 사용자가 눌렀을때
Future<void> handleOnBackgroundMessageOpenedApp({
  required RemoteMessage message,
}) async {
  Logger().d('[FCM] 앱 백그라운드에서 알림 메세지 클릭 : ${message.data}');

  if (message.data != null) {
    // MainController.to.handleWebViewControllerLoadURL(message: message);
  }
}
