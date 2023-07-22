import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'app/routes/app_pages.dart';
import 'app/service/global_service.dart';
import 'app/service/in_app_purchase_service.dart';
import 'app/service/permission_service.dart';
import 'app/theme/theme.dart';
import 'app/utils/http_overrides.dart';
import 'app/utils/system_chrome.dart';

void main() async {
  await initialize();
  runApp(const MyApp());
}

Future<void> initialize() async {
  /// Widget Binding 초기화
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    SchedulerBinding.instance.scheduleWarmUpFrame();
  });

  // Http 초기화 (디버그 모드일 경우)
  if (kDebugMode) {
    HttpOverrides.global = MyHttpOverrides();
  }

  /// .env 초기화
  await dotenv.load();

  /// Get Storage 초기화
  await GetStorage.init();

  /// Timeago 언어 초기화
  timeago.setLocaleMessages('ko', timeago.KoMessages());

  /// 디바이스 가로모드 방지
  SystemChome.setSystemChromeDeviceOrientation(
    type: DeviceOrientationType.PreventLandscape,
  );

  // 상단 상태 표시줄 색상 설정
  SystemChome.setSystemChromeStatusBarColor();

  // 파이어베이스 초기화
  // await Firebase.initializeApp();

  // 카카오 초기화
  // KakaoSdk.init(nativeAppKey: dotenv.env['APP_KAKAO_NATIVE_APP_KEY']);

  // 인증 서비스 초기화
  // Get.put(AuthService(), permanent: true);

  /// 데이터 서비스 초기화
  // Get.put(DataService(), permanent: true);

  /// 권한 서비스 초기화
  Get.put(PermissionService(), permanent: true);

  // 글로벌 서비스 초기화
  Get.put(GlobalService(), permanent: true);

  // 파이어베이스 클라우드 메시징 서비스 초기화
  // Get.put(FirebaseCloudMessagingService(), permanent: true);

  // 인앱 결제 서비스 초기화
  Get.put(InAppPurchaseService(), permanent: true);

  // 스크롤 서비스 초기화
  // Get.put(ScrollService(), permanent: true);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilWidget.init(
      builder: (BuildContext context, Widget? child) {
        return GetMaterialAppWidget.init(
          context: context,
          debugShowCheckedModeBanner: false,
          title: dotenv.env['APP_EN_NAME']!,
          initialRoute: '/splash',
          getPages: AppPages.routes,
          supportedLocales: const [
            Locale('ko', 'KR'),
          ],
          fallbackLocale: const Locale('ko', 'KR'),
        );
      },
    );
  }
}

class ScreenUtilWidget extends ScreenUtilInit {
  const ScreenUtilWidget({
    super.key,
    super.designSize,
    super.minTextAdapt,
    super.splitScreenMode,
    super.useInheritedMediaQuery,
    super.child,
    required super.builder,
  });

  /// 스크린 유틸 위젯
  ///
  /// [designSize] Size : 디자인 사이즈
  ///
  /// [minTextAdapt] bool : 텍스트 크기 자동 조절
  ///
  /// [splitScreenMode] bool : 스플릿 스크린 모드
  ///
  /// [useInheritedMediaQuery] bool : 상속된 미디어 쿼리 사용
  ///
  /// [child] Widget? : 자식 위젯
  ///
  /// [builder] Widget Function(BuildContext, Widget?) : 빌더
  factory ScreenUtilWidget.init({
    Size designSize = const Size(360, 640),
    bool allowFontScaling = true,
    bool minTextAdapt = true,
    bool splitScreenMode = true,
    bool useInheritedMediaQuery = true,
    Widget? child,
    required Widget Function(BuildContext, Widget?) builder,
  }) {
    return ScreenUtilWidget(
      designSize: designSize,
      minTextAdapt: minTextAdapt,
      splitScreenMode: splitScreenMode,
      useInheritedMediaQuery: useInheritedMediaQuery,
      builder: builder,
      child: child,
    );
  }
}

class GetMaterialAppWidget extends GetMaterialApp {
  const GetMaterialAppWidget({
    super.key,
    super.title,
    super.initialRoute,
    super.getPages,
    super.builder,
    super.localizationsDelegates,
    super.supportedLocales,
    super.fallbackLocale,
    super.debugShowCheckedModeBanner,
    super.checkerboardRasterCacheImages,
    super.themeMode,
    super.theme,
    super.darkTheme,
    super.locale,
    super.translations,
    super.translationsKeys,
    super.localeResolutionCallback,
    super.localeListResolutionCallback,
    super.navigatorObservers,
    super.navigatorKey,
    super.initialBinding,
    super.defaultTransition,
    super.defaultGlobalState,
  });

  /// GetMaterialApp 위젯
  ///
  /// [title] String : 앱 이름
  ///
  /// [initialRoute] String : 초기 라우트
  ///
  /// [getPages] List<GetPage> : 라우트
  ///
  /// [builder] Widget Function(BuildContext, Widget?) : 빌더
  ///
  /// [localizationsDelegates] List<LocalizationsDelegate> : 지역화 위임
  ///
  /// [supportedLocales] List<Locale> : 지원하는 언어
  ///
  /// [fallbackLocale] Locale : 기본 언어
  ///
  /// [debugShowCheckedModeBanner] bool : 디버그 배너 표시
  ///
  /// [themeMode] ThemeMode : 테마 모드
  ///
  /// [theme] ThemeData : 테마
  ///
  /// [darkTheme] ThemeData : 다크 테마
  ///
  /// [locale] Locale : 언어
  ///
  /// [translations] Translations : 번역
  ///
  /// [translationsKeys] TranslationKeys : 번역 키
  ///
  /// [localeResolutionCallback] Locale Function(Locale?, Iterable<Locale>)? : 언어 해상 콜백
  ///
  /// [localeListResolutionCallback] LocaleListResolutionCallback? : 언어 리스트 해상 콜백
  ///
  /// [navigatorObservers] List<NavigatorObserver> : 네비게이터 옵저버
  ///
  /// [navigatorKey] GlobalKey<NavigatorState>? : 네비게이터 키
  ///
  /// [initialBinding] BindingsBuilder? : 초기 바인딩
  ///
  /// [defaultTransition] Transition : 기본 전환
  ///
  /// [defaultGlobalState] bool : 기본 전역 상태
  factory GetMaterialAppWidget.init({
    required BuildContext context,
    bool debugShowCheckedModeBanner = false,
    String title = '',
    String initialRoute = '/splash',
    required List<GetPage> getPages,
    List<Locale> supportedLocales = const <Locale>[
      Locale('ko', 'KR'),
    ],
    Locale fallbackLocale = const Locale('ko', 'KR'),
  }) {
    return GetMaterialAppWidget(
      /// https://blog.gskinner.com/archives/2022/09/flutter-rendering-optimization-tips.html
      // checkerboardRasterCacheImages: true,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      title: dotenv.env['APP_EN_NAME']!,
      initialRoute: '/splash',
      getPages: AppPages.routes,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: supportedLocales,
      fallbackLocale: fallbackLocale,
      themeMode: GlobalService.to.themeMode.value,
      theme: theme(context: context),
      // darkTheme: darkTheme(context: context),
    );
  }
}
