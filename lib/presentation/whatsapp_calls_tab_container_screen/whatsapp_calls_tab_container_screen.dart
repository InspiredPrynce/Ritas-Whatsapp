import 'package:flutter/material.dart';
import 'package:ritas_whatsapp/core/app_export.dart';
import 'package:ritas_whatsapp/presentation/whatsapp_calls_page/whatsapp_calls_page.dart';
import 'package:ritas_whatsapp/presentation/whatsapp_updates_page/whatsapp_updates_page.dart';
import 'package:ritas_whatsapp/widgets/app_bar/appbar_title.dart';
import 'package:ritas_whatsapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ritas_whatsapp/widgets/app_bar/custom_app_bar.dart';
import 'controller/whatsapp_calls_tab_container_controller.dart';

// ignore_for_file: must_be_immutable
class WhatsappCallsTabContainerScreen
    extends GetWidget<WhatsappCallsTabContainerController> {
  const WhatsappCallsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFrameOne(),
              Expanded(
                child: SizedBox(
                  height: 692.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      WhatsappCallsPage(),
                      WhatsappUpdatesPage(),
                      WhatsappCallsPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameOne() {
    return Container(
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        children: [
          SizedBox(height: 37.v),
          CustomAppBar(
            height: 33.v,
            title: AppbarTitle(
              text: "lbl_wa_business".tr,
              margin: EdgeInsets.only(left: 29.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgSearch,
                margin: EdgeInsets.only(
                  left: 29.h,
                  top: 5.v,
                  right: 3.h,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgCamera,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 5.v,
                  right: 3.h,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgPepiconsPencilDotsY,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 5.v,
                  right: 32.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 37.v),
          Container(
            height: 44.v,
            width: 372.h,
            child: TabBar(
              controller: controller.tabviewController,
              isScrollable: true,
              labelColor: theme.colorScheme.primary,
              labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: theme.colorScheme.onError,
              unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
              indicatorColor: theme.colorScheme.primary,
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 1.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "lbl_chats".tr,
                        ),
                      ),
                      Container(
                        width: 23.adaptSize,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.fillOnError.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Text(
                          "lbl_3".tr,
                        ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_updates".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_calls".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
