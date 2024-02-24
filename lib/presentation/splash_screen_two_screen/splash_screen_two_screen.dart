import 'package:flutter/material.dart';
import 'package:ritas_whatsapp/core/app_export.dart';
import 'controller/splash_screen_two_controller.dart';

// ignore_for_file: must_be_immutable
class SplashScreenTwoScreen extends GetWidget<SplashScreenTwoController> {
  const SplashScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 49.v),
          child: Column(
            children: [
              Spacer(
                flex: 54,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage5,
                height: 91.adaptSize,
                width: 91.adaptSize,
              ),
              Spacer(
                flex: 45,
              ),
              Text(
                "lbl_from".tr,
                style: CustomTextStyles.bodyMediumGray100,
              ),
              SizedBox(height: 6.v),
              Text(
                "lbl_facebook".tr,
                style: theme.textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
