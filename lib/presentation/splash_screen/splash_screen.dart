import 'package:flutter/material.dart';
import 'package:ritas_whatsapp/core/app_export.dart';
import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 49.v),
                child: Column(children: [
                  Spacer(flex: 54),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage4,
                      height: 129.adaptSize,
                      width: 129.adaptSize),
                  Spacer(flex: 45),
                  Text("lbl_from".tr,
                      style: CustomTextStyles.bodyMediumBluegray40010),
                  SizedBox(height: 6.v),
                  Text("lbl_facebook".tr,
                      style: CustomTextStyles.titleLargePrimary)
                ]))));
  }
}
