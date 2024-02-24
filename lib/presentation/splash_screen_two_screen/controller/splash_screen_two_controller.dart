import 'package:ritas_whatsapp/core/app_export.dart';
import 'package:ritas_whatsapp/presentation/splash_screen_two_screen/models/splash_screen_two_model.dart';

/// A controller class for the SplashScreenTwoScreen.
///
/// This class manages the state of the SplashScreenTwoScreen, including the
/// current splashScreenTwoModelObj
class SplashScreenTwoController extends GetxController {
  Rx<SplashScreenTwoModel> splashScreenTwoModelObj = SplashScreenTwoModel().obs;
}
