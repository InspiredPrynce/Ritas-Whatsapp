import 'package:flutter/material.dart';
import 'package:ritas_whatsapp/core/app_export.dart';
import 'package:ritas_whatsapp/widgets/custom_icon_button.dart';
import 'controller/whatsapp_calls_controller.dart';
import 'models/listwithuserprofile_item_model.dart';
import 'models/whatsapp_calls_model.dart';
import 'widgets/listwithuserprofile_item_widget.dart';

class WhatsappCallsPage extends StatelessWidget {
  WhatsappCallsPage({Key? key})
      : super(
          key: key,
        );

  WhatsappCallsController controller =
      Get.put(WhatsappCallsController(WhatsappCallsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildRowWithIconButtonAndColumn(),
                    SizedBox(height: 28.v),
                    Text(
                      "lbl_recent".tr,
                      style: CustomTextStyles.titleMedium16,
                    ),
                    SizedBox(height: 28.v),
                    _buildListWithUserProfile(),
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
  Widget _buildRowWithIconButtonAndColumn() {
    return Padding(
      padding: EdgeInsets.only(right: 26.h),
      child: Row(
        children: [
          CustomIconButton(
            height: 57.adaptSize,
            width: 57.adaptSize,
            padding: EdgeInsets.all(11.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL28,
            child: CustomImageView(
              imagePath: ImageConstant.imgIcBaselineLink,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_create_call_link".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_share_a_link_for".tr,
                  style: CustomTextStyles.titleMediumBluegray40010,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListWithUserProfile() {
    return Obx(
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
        itemCount: controller.whatsappCallsModelObj.value
            .listwithuserprofileItemList.value.length,
        itemBuilder: (context, index) {
          ListwithuserprofileItemModel model = controller.whatsappCallsModelObj
              .value.listwithuserprofileItemList.value[index];
          return ListwithuserprofileItemWidget(
            model,
          );
        },
      ),
    );
  }
}
