import 'package:codemock/core/app_export.dart';
import 'package:codemock/widgets/app_bar/appbar_leading_image.dart';
import 'package:codemock/widgets/app_bar/appbar_title.dart';
import 'package:codemock/widgets/app_bar/appbar_trailing_image.dart';
import 'package:codemock/widgets/app_bar/custom_app_bar.dart';
import 'package:codemock/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ControlAcOffScreen extends StatelessWidget {
  const ControlAcOffScreen({Key? key}) : super(key: key);

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
                    child: _buildTwelve(context)))));
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
  Widget _buildTwelve(BuildContext context) {
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
                          decoration: AppDecoration.gradientWhiteAToBlue,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 342.v),
                                Text("lbl_16_c".tr,
                                    style: theme.textTheme.headlineLarge),
                                Text("lbl_temperature".tr,
                                    style:
                                        CustomTextStyles.bodySmallBluegray100),
                                SizedBox(height: 92.v),
                                Container(
                                    margin: EdgeInsets.only(right: 1.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 15.v),
                                    decoration: AppDecoration.outlineBlueGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIconsMode,
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
                                                        .titleMediumBluegray300),
                                                Text("lbl_auto".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallBluegray100)
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
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.only(top: 156.v),
                          color: appTheme.whiteA700,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder132),
                          child: Container(
                              height: 264.adaptSize,
                              width: 264.adaptSize,
                              padding: EdgeInsets.all(4.h),
                              decoration: AppDecoration.outlineBluegray10001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder132),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomIconButton(
                                    height: 72.adaptSize,
                                    width: 72.adaptSize,
                                    padding: EdgeInsets.all(14.h),
                                    alignment: Alignment.center,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIconsPower)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 255.adaptSize,
                                        width: 255.adaptSize,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(127.h),
                                            gradient: LinearGradient(
                                                begin: Alignment(0.19, 0.09),
                                                end: Alignment(1.66, 1.71),
                                                colors: [
                                                  appTheme.blueGray10001,
                                                  appTheme.blueGray30001
                                                ]))))
                              ])))),
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
