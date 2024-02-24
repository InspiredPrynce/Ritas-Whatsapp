import 'package:flutter/material.dart';
import 'package:ritas_whatsapp/core/app_export.dart';
import 'controller/whatsapp_updates_controller.dart';
import 'models/userprofilelist1_item_model.dart';
import 'models/whatsapp_updates_model.dart';
import 'widgets/userprofilelist1_item_widget.dart';

class WhatsappUpdatesPage extends StatelessWidget {
  WhatsappUpdatesPage({Key? key})
      : super(
          key: key,
        );

  WhatsappUpdatesController controller =
      Get.put(WhatsappUpdatesController(WhatsappUpdatesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    right: 24.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildStatusRow(),
                      SizedBox(height: 25.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.h,
                          right: 94.h,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 57.v,
                              width: 62.h,
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse31,
                                    height: 57.adaptSize,
                                    width: 57.adaptSize,
                                    radius: BorderRadius.circular(
                                      28.h,
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      height: 23.adaptSize,
                                      width: 23.adaptSize,
                                      margin: EdgeInsets.only(bottom: 2.v),
                                      decoration: AppDecoration.outlineOnPrimary
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgPlus,
                                        height: 21.adaptSize,
                                        width: 21.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.h,
                                top: 8.v,
                                bottom: 5.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_my_status".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "msg_tap_to_add_status".tr,
                                    style: CustomTextStyles
                                        .titleMediumBluegray40010,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 32.v),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "lbl_recent_updates".tr,
                          style: CustomTextStyles.titleMediumBluegray4001016,
                        ),
                      ),
                      SizedBox(height: 16.v),
                      _buildUserProfileList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStatusRow() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 13.h,
          right: 4.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text(
                "lbl_status".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgPepiconsPencilDotsY,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 8.v,
          );
        },
        itemCount: controller.whatsappUpdatesModelObj.value
            .userprofilelist1ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofilelist1ItemModel model = controller.whatsappUpdatesModelObj
              .value.userprofilelist1ItemList.value[index];
          return Userprofilelist1ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
