import 'package:flutter/material.dart';
import 'package:ritas_whatsapp/core/app_export.dart';
import '../controller/whatsapp_storage_controller.dart';
import '../models/businessprofilesection_item_model.dart';

// ignore: must_be_immutable
class BusinessprofilesectionItemWidget extends StatelessWidget {
  BusinessprofilesectionItemWidget(
    this.businessprofilesectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BusinessprofilesectionItemModel businessprofilesectionItemModelObj;

  var controller = Get.find<WhatsappStorageController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => CustomImageView(
            imagePath:
                businessprofilesectionItemModelObj.businessProfileImage!.value,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 15.v),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  businessprofilesectionItemModelObj.businessProfileText!.value,
                  style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                ),
              ),
              SizedBox(height: 5.v),
              SizedBox(
                width: 174.h,
                child: Obx(
                  () => Text(
                    businessprofilesectionItemModelObj.manageAddressText!.value,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
