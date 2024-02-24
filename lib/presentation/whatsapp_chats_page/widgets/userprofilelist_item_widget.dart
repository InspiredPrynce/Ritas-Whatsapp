import 'package:flutter/material.dart';
import 'package:ritas_whatsapp/core/app_export.dart';
import '../controller/whatsapp_chats_controller.dart';
import '../models/userprofilelist_item_model.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<WhatsappChatsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: userprofilelistItemModelObj.userImage!.value,
            height: 57.adaptSize,
            width: 57.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              bottom: 4.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          userprofilelistItemModelObj.groupName!.value,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Obx(
                        () => Text(
                          userprofilelistItemModelObj.typingText!.value,
                          style: CustomTextStyles.titleMediumPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Obx(
                          () => Text(
                            userprofilelistItemModelObj.timeText!.value,
                            style: CustomTextStyles.bodyMediumPrimary,
                          ),
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Row(
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath:
                                  userprofilelistItemModelObj.image1!.value,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                          Container(
                            width: 23.adaptSize,
                            margin: EdgeInsets.only(left: 7.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.h,
                              vertical: 2.v,
                            ),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Obx(
                              () => Text(
                                userprofilelistItemModelObj.groupText!.value,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
