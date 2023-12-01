import 'package:codemock/core/app_export.dart';
import 'package:codemock/widgets/app_bar/appbar_leading_image.dart';
import 'package:codemock/widgets/app_bar/appbar_title.dart';
import 'package:codemock/widgets/app_bar/appbar_trailing_image.dart';
import 'package:codemock/widgets/app_bar/custom_app_bar.dart';
import 'package:codemock/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ControlAcOnScreen extends StatelessWidget {
  const ControlAcOnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(context),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.whiteA700, appTheme.gray5001])),
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 20.v),
                    child: _buildSeven(context)))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_thermostat".tr, margin: EdgeInsets.only(left: 8.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgEdit,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconsDelete,
              margin: EdgeInsets.only(left: 12.h, top: 16.v, right: 32.h))
        ]);
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: SizedBox(
                height: 858.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomRight, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: EdgeInsets.only(top: 22.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 104.h, vertical: 71.v),
                          decoration: AppDecoration.gradientBlueToBlue,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 337.v),
                                Text("lbl_16_c".tr,
                                    style:
                                        CustomTextStyles.headlineLargeGray900),
                                Text("lbl_temperature".tr,
                                    style: theme.textTheme.bodySmall),
                                SizedBox(height: 97.v),
                                Container(
                                    margin: EdgeInsets.only(left: 1.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 15.v),
                                    decoration: AppDecoration.outlineBlack
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgIconsModeGray900,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 5.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 16.h),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_mode".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumMedium),
                                                Text("lbl_auto".tr,
                                                    style: theme
                                                        .textTheme.bodySmall)
                                              ]))
                                    ]))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgVector4,
                      height: 474.v,
                      width: 110.h,
                      alignment: Alignment.bottomRight),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 106.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_room_temperature2".tr,
                                      style: theme.textTheme.bodySmall),
                                  TextSpan(
                                      text: "lbl_24_c".tr,
                                      style: CustomTextStyles.bodySmallGray900)
                                ]),
                                textAlign: TextAlign.left),
                            SizedBox(height: 4.v),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_room_humidity_is2".tr,
                                      style: theme.textTheme.bodySmall),
                                  TextSpan(
                                      text: "lbl_dry".tr,
                                      style: CustomTextStyles.bodySmallGray900)
                                ]),
                                textAlign: TextAlign.left)
                          ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 264.adaptSize,
                          width: 264.adaptSize,
                          margin: EdgeInsets.only(top: 124.v),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    height: 8.adaptSize,
                                    width: 8.adaptSize,
                                    margin:
                                        EdgeInsets.only(left: 65.h, top: 32.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.whiteA700,
                                        borderRadius:
                                            BorderRadius.circular(4.h)))),
                            Align(
                                alignment: Alignment.center,
                                child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: appTheme.whiteA700,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder132),
                                    child: Container(
                                        height: 264.adaptSize,
                                        width: 264.adaptSize,
                                        padding: EdgeInsets.all(4.h),
                                        decoration: AppDecoration
                                            .outlineBluegray10001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder132),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomIconButton(
                                                  height: 72.adaptSize,
                                                  width: 72.adaptSize,
                                                  padding: EdgeInsets.all(14.h),
                                                  alignment: Alignment.center,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgIconsPowerDeepPurpleA700)),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 255.adaptSize,
                                                      width: 255.adaptSize,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      127.h),
                                                          gradient:
                                                              LinearGradient(
                                                                  begin:
                                                                      Alignment(
                                                                          0.5,
                                                                          0),
                                                                  end:
                                                                      Alignment(
                                                                          0.5,
                                                                          1),
                                                                  colors: [
                                                                appTheme
                                                                    .deepPurpleA400,
                                                                appTheme.blue400
                                                              ])))),
                                              Align(
                                                  alignment: Alignment
                                                      .bottomLeft,
                                                  child: Container(
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 41.h,
                                                          bottom: 32.v),
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      14.h))))
                                            ]))))
                          ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgVector3,
                      height: 474.v,
                      width: 110.h,
                      alignment: Alignment.bottomLeft)
                ]))));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
