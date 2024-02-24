import '../controller/splash_screen_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashScreenTwoScreen.
///
/// This class ensures that the SplashScreenTwoController is created when the
/// SplashScreenTwoScreen is first loaded.
class SplashScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenTwoController());
  }
}
