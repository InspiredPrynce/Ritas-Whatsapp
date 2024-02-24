import 'package:flutter/material.dart';
import 'package:ritas_whatsapp/core/app_export.dart';
import '../controller/whatsapp_calls_controller.dart';
import '../models/listwithuserprofile_item_model.dart';

// ignore: must_be_immutable
class ListwithuserprofileItemWidget extends StatelessWidget {
  ListwithuserprofileItemWidget(
    this.listwithuserprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListwithuserprofileItemModel listwithuserprofileItemModelObj;

  var controller = Get.find<WhatsappCallsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: listwithuserprofileItemModelObj.profileImage!.value,
            height: 57.adaptSize,
            width: 57.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            top: 5.v,
            bottom: 3.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listwithuserprofileItemModelObj.username!.value,
                  style: CustomTextStyles.titleMediumRed400,
                ),
              ),
              SizedBox(height: 6.v),
              Row(
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath:
                          listwithuserprofileItemModelObj.postImage!.value,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Obx(
                      () => Text(
                        listwithuserprofileItemModelObj.postTime!.value,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgIcRoundPhonePrimary,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 3.v,
            bottom: 29.v,
          ),
        ),
      ],
    );
  }
}
