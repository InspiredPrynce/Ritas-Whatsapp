import 'package:get/get.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/splash_screen_two_screen/splash_screen_two_screen.dart';
import '../presentation/splash_screen_two_screen/binding/splash_screen_two_binding.dart';
import '../presentation/whatsapp_open_chat_screen/whatsapp_open_chat_screen.dart';
import '../presentation/whatsapp_open_chat_screen/binding/whatsapp_open_chat_binding.dart';
import '../presentation/whatsapp_calls_tab_container_screen/whatsapp_calls_tab_container_screen.dart';
import '../presentation/whatsapp_calls_tab_container_screen/binding/whatsapp_calls_tab_container_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String splashScreenTwoScreen = '/splash_screen_two_screen';

  static const String whatsappStoragePage = '/whatsapp_storage_page';

  static const String whatsappChatsPage = '/whatsapp_chats_page';

  static const String whatsappOpenChatScreen = '/whatsapp_open_chat_screen';

  static const String whatsappUpdatesPage = '/whatsapp_updates_page';

  static const String whatsappCallsPage = '/whatsapp_calls_page';

  static const String whatsappCallsTabContainerScreen =
      '/whatsapp_calls_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: splashScreenTwoScreen,
      page: () => SplashScreenTwoScreen(),
      bindings: [
        SplashScreenTwoBinding(),
      ],
    ),
    GetPage(
      name: whatsappOpenChatScreen,
      page: () => WhatsappOpenChatScreen(),
      bindings: [
        WhatsappOpenChatBinding(),
      ],
    ),
    GetPage(
      name: whatsappCallsTabContainerScreen,
      page: () => WhatsappCallsTabContainerScreen(),
      bindings: [
        WhatsappCallsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
