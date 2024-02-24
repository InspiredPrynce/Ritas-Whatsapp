import 'package:flutter/material.dart';
import 'package:ritas_whatsapp/core/app_export.dart';
import 'package:ritas_whatsapp/widgets/custom_elevated_button.dart';
import 'package:ritas_whatsapp/widgets/custom_icon_button.dart';
import 'controller/whatsapp_storage_controller.dart';
import 'models/businessprofilesection_item_model.dart';
import 'models/whatsapp_storage_model.dart';
import 'widgets/businessprofilesection_item_widget.dart';

class WhatsappStoragePage extends StatelessWidget {
  WhatsappStoragePage({Key? key})
      : super(
          key: key,
        );

  WhatsappStorageController controller =
      Get.put(WhatsappStorageController(WhatsappStorageModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_grow_your_business".tr,
                      style: CustomTextStyles.titleMediumBluegray40006,
                    ),
                    SizedBox(height: 14.v),
                    _buildGrowYourBusinessSection(),
                    SizedBox(height: 31.v),
                    Text(
                      "lbl_business_tools".tr,
                      style: CustomTextStyles.titleMediumBluegray40006,
                    ),
                    SizedBox(height: 29.v),
                    _buildBusinessProfileSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGrowYourBusinessSection() {
    return Container(
      width: 348.h,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 27.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(bottom: 55.v),
                  color: appTheme.blueGray90001,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Container(
                    height: 48.v,
                    width: 49.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(3.h),
                          decoration: IconButtonStyleHelper.fillBlueGray,
                          alignment: Alignment.bottomLeft,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMaximize,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgStar1,
                          height: 6.adaptSize,
                          width: 6.adaptSize,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 9.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgStar2,
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: 3.h,
                            top: 6.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_create_your_first".tr,
                        style: CustomTextStyles.titleMediumSemiBold,
                      ),
                      SizedBox(height: 2.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMdiNaira,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Text(
                            "lbl_1_476_10_day".tr,
                            style: CustomTextStyles.titleMediumSemiBold,
                          ),
                        ],
                      ),
                      SizedBox(height: 9.v),
                      SizedBox(
                        width: 196.h,
                        child: Text(
                          "msg_reach_potential".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          CustomElevatedButton(
            text: "lbl_get_started".tr,
            margin: EdgeInsets.only(
              left: 6.h,
              right: 7.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBusinessProfileSection() {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 78.h,
      ),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 36.v,
            );
          },
          itemCount: controller.whatsappStorageModelObj.value
              .businessprofilesectionItemList.value.length,
          itemBuilder: (context, index) {
            BusinessprofilesectionItemModel model = controller
                .whatsappStorageModelObj
                .value
                .businessprofilesectionItemList
                .value[index];
            return BusinessprofilesectionItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
