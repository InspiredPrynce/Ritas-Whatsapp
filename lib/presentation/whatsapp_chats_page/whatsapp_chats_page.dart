import 'package:flutter/material.dart';
import 'package:ritas_whatsapp/core/app_export.dart';
import 'controller/whatsapp_chats_controller.dart';
import 'models/userprofilelist_item_model.dart';
import 'models/whatsapp_chats_model.dart';
import 'widgets/userprofilelist_item_widget.dart';

class WhatsappChatsPage extends StatelessWidget {
  WhatsappChatsPage({Key? key})
      : super(
          key: key,
        );

  WhatsappChatsController controller =
      Get.put(WhatsappChatsController(WhatsappChatsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.h),
                  child: Column(
                    children: [
                      _buildArchiveBoxRow(),
                      SizedBox(height: 24.v),
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
  Widget _buildArchiveBoxRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 19.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArchivebox,
            height: 28.adaptSize,
            width: 28.adaptSize,
          ),
          Spacer(
            flex: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Text(
              "lbl_archived".tr,
              style: CustomTextStyles.titleMediumMedium16,
            ),
          ),
          Spacer(
            flex: 84,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_14".tr,
              style: CustomTextStyles.titleMediumPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Obx(
      () => ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 30.v,
          );
        },
        itemCount: controller
            .whatsappChatsModelObj.value.userprofilelistItemList.value.length,
        itemBuilder: (context, index) {
          UserprofilelistItemModel model = controller
              .whatsappChatsModelObj.value.userprofilelistItemList.value[index];
          return UserprofilelistItemWidget(
            model,
          );
        },
      ),
    );
  }
}
