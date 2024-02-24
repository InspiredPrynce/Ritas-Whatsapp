import 'package:flutter/material.dart';
import 'package:ritas_whatsapp/core/app_export.dart';
import 'package:ritas_whatsapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:ritas_whatsapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:ritas_whatsapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ritas_whatsapp/widgets/app_bar/custom_app_bar.dart';
import 'package:ritas_whatsapp/widgets/custom_icon_button.dart';
import 'package:ritas_whatsapp/widgets/custom_text_form_field.dart';
import 'controller/whatsapp_open_chat_controller.dart';

// ignore_for_file: must_be_immutable
class WhatsappOpenChatScreen extends GetWidget<WhatsappOpenChatController> {
  const WhatsappOpenChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.errorContainer,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(bottom: 50.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.errorContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup87,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildFrameSeventy(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 4.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 3.h,
                          right: 88.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 19.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.fillOnErrorContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Container(
                                width: 189.h,
                                margin: EdgeInsets.symmetric(vertical: 5.v),
                                child: Text(
                                  "msg_if_i_see_that_of".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 3.h,
                                top: 30.v,
                                right: 1.h,
                              ),
                              child: Text(
                                "lbl_9_19_am".tr,
                                style:
                                    CustomTextStyles.bodySmallBluegray4000610,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Padding(
                        padding: EdgeInsets.only(right: 88.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgContrast,
                              height: 26.v,
                              width: 14.h,
                              margin: EdgeInsets.only(bottom: 108.v),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4.h,
                                  vertical: 8.v,
                                ),
                                decoration:
                                    AppDecoration.fillOnErrorContainer.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL20,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 7.h),
                                      decoration: AppDecoration.fillBluegray900
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          SizedBox(
                                            height: 69.v,
                                            child: VerticalDivider(
                                              width: 3.h,
                                              thickness: 3.v,
                                              color: appTheme.deepPurple300,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 8.h,
                                              top: 3.v,
                                              bottom: 4.v,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "lbl_tuzy_boka".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallDeeppurple300,
                                                ),
                                                SizedBox(height: 4.v),
                                                SizedBox(
                                                  width: 146.h,
                                                  child: Text(
                                                    "msg_vacancy_job_role".tr,
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodySmallBluegray40006,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 7.v),
                                    Container(
                                      width: 189.h,
                                      margin: EdgeInsets.only(
                                        left: 9.h,
                                        right: 49.h,
                                      ),
                                      child: Text(
                                        "msg_but_do_you_know".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                    SizedBox(height: 1.v),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 15.h),
                                        child: Text(
                                          "lbl_9_20_am".tr,
                                          style: CustomTextStyles
                                              .bodySmallBluegray4000610,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 127.v,
                          width: 283.h,
                          margin: EdgeInsets.only(right: 18.h),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              _buildFrameSeventyTwo(
                                userName: "lbl_tuzy_boka".tr,
                                description: "msg_if_i_see_that_of".tr,
                                letMeCheckAnd: "msg_thanks_bro_i_appreciate".tr,
                                time: "lbl_9_20_am".tr,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 34.h),
                                child: CustomIconButton(
                                  height: 26.adaptSize,
                                  width: 26.adaptSize,
                                  padding: EdgeInsets.all(5.h),
                                  decoration: IconButtonStyleHelper
                                      .fillOnErrorContainer,
                                  alignment: Alignment.bottomRight,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgBiHeartFill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgContrast,
                            height: 14.v,
                            width: 13.h,
                            margin: EdgeInsets.only(bottom: 29.v),
                          ),
                          Container(
                            width: 230.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 17.h,
                              vertical: 11.v,
                            ),
                            decoration:
                                AppDecoration.fillOnErrorContainer.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 6.v),
                                  child: Text(
                                    "lbl_you_re_welcome".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgBiHeartFill,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 8.h,
                                    top: 6.v,
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 9.v,
                                    right: 2.h,
                                  ),
                                  child: Text(
                                    "lbl_9_20_am".tr,
                                    style: CustomTextStyles
                                        .bodySmallBluegray4000610,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 59.h,
                          right: 18.h,
                        ),
                        child: _buildFrameSeventyTwo(
                          userName: "lbl_tuzy_boka".tr,
                          description: "msg_but_do_you_know2".tr,
                          letMeCheckAnd: "msg_let_me_check_and".tr,
                          time: "lbl_9_20_am".tr,
                        ),
                      ),
                      SizedBox(height: 16.v),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgContrast,
                            height: 14.v,
                            width: 13.h,
                            margin: EdgeInsets.only(bottom: 62.v),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.h,
                              vertical: 8.v,
                            ),
                            decoration:
                                AppDecoration.fillOnErrorContainer.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL20,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration:
                                      AppDecoration.fillBluegray900.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(
                                        height: 39.v,
                                        child: VerticalDivider(
                                          width: 3.h,
                                          thickness: 3.v,
                                          color: theme.colorScheme.primary,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 8.h,
                                          top: 2.v,
                                          bottom: 3.v,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_you".tr,
                                              style: CustomTextStyles
                                                  .bodySmallPrimary,
                                            ),
                                            SizedBox(height: 5.v),
                                            Text(
                                              "msg_let_me_check_and".tr,
                                              style: CustomTextStyles
                                                  .bodySmallBluegray40006,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 6.v),
                                Container(
                                  width: 201.h,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 10.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "msg_alright_thanks2".tr,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                      Text(
                                        "lbl_9_20_am".tr,
                                        style: CustomTextStyles
                                            .bodySmallBluegray4000610,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
        bottomNavigationBar: _buildFrameSixtyThree(),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSeventy() {
    return SizedBox(
      height: 162.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                left: 18.h,
                right: 103.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillOnErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 234.h,
                    child: Text(
                      "msg_alright_bro_no".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 6.h),
                      child: Text(
                        "lbl_9_18_am".tr,
                        style: CustomTextStyles.bodySmallBluegray4000610,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomAppBar(
            leadingWidth: 92.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgFrame67,
              margin: EdgeInsets.only(
                left: 18.h,
                top: 34.v,
                bottom: 17.v,
              ),
            ),
            title: AppbarSubtitle(
              text: "lbl_tuzy_boka".tr,
              margin: EdgeInsets.only(
                left: 12.h,
                top: 48.v,
                bottom: 26.v,
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgBxsVideo,
                margin: EdgeInsets.only(
                  left: 22.h,
                  top: 45.v,
                  right: 27.h,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgIcRoundPhone,
                margin: EdgeInsets.only(
                  left: 24.h,
                  top: 45.v,
                  right: 27.h,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgPepiconsPencilDotsY,
                margin: EdgeInsets.only(
                  left: 24.h,
                  top: 45.v,
                  right: 49.h,
                ),
              ),
            ],
            styleType: Style.bgFill,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSixtyThree() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 14.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: CustomTextFormField(
                controller: controller.messageController,
                hintText: "lbl_message".tr,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(12.h, 12.v, 14.h, 12.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMingcuteemojifill,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 48.v,
                ),
                suffix: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 14.v,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgTeenyiconsattachoutline,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 48.v,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgMdiMicrophone,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameSeventyTwo({
    required String userName,
    required String description,
    required String letMeCheckAnd,
    required String time,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillTeal.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: AppDecoration.fillTeal90001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 56.v,
                        child: VerticalDivider(
                          width: 5.h,
                          thickness: 5.v,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            top: 3.v,
                            bottom: 7.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userName,
                                style: CustomTextStyles.bodySmallDeeppurple300
                                    .copyWith(
                                  color: appTheme.deepPurple300,
                                ),
                              ),
                              SizedBox(height: 3.v),
                              SizedBox(
                                width: 216.h,
                                child: Text(
                                  description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodySmallBluegray40006
                                      .copyWith(
                                    color: appTheme.blueGray40006,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    letMeCheckAnd,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 18.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 1.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            time,
                            style:
                                CustomTextStyles.bodySmallBluegray400.copyWith(
                              color: appTheme.blueGray400,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgQuillCheckmarkDoubleBlueGray400,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(left: 2.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSettings,
          height: 18.v,
          width: 15.h,
          margin: EdgeInsets.only(bottom: 104.v),
        ),
      ],
    );
  }
}
