import 'package:flutter/material.dart';
import 'package:ritas_whatsapp/core/app_export.dart';
import '../controller/whatsapp_updates_controller.dart';
import '../models/userprofilelist1_item_model.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget(
    this.userprofilelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist1ItemModel userprofilelist1ItemModelObj;

  var controller = Get.find<WhatsappUpdatesController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 80.v,
          width: 81.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: userprofilelist1ItemModelObj.userImage!.value,
                  height: 57.adaptSize,
                  width: 57.adaptSize,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 80.v,
                  width: 81.h,
                  child: CircularProgressIndicator(
                    value: 0.5,
                    backgroundColor: theme.colorScheme.primary,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 77.v,
                  width: 76.h,
                  child: CircularProgressIndicator(
                    value: 0.5,
                    backgroundColor: theme.colorScheme.primary,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 74.v,
                  width: 75.h,
                  child: CircularProgressIndicator(
                    value: 0.5,
                    backgroundColor: theme.colorScheme.primary,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 18.v,
            bottom: 18.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  userprofilelist1ItemModelObj.username!.value,
                  style: CustomTextStyles.titleMedium16,
                ),
              ),
              SizedBox(height: 6.v),
              Obx(
                () => Text(
                  userprofilelist1ItemModelObj.timestamp!.value,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
