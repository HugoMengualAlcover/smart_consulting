import 'controller/scanning_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/widgets/app_bar/appbar_iconbutton.dart';
import 'package:smartconsulting/widgets/app_bar/custom_app_bar.dart';
import 'package:smartconsulting/widgets/custom_icon_button.dart';
import 'package:smartconsulting/presentation/scanner_bottomsheet/scanner_bottomsheet.dart';
import 'package:smartconsulting/presentation/scanner_bottomsheet/controller/scanner_controller.dart';

class ScanningScreen extends GetWidget<ScanningController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(top: 34, bottom: 34),
                    decoration: AppDecoration.fillYellow800,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomAppBar(
                              height: getVerticalSize(40),
                              leadingWidth: 67,
                              leading: AppbarIconbutton(
                                  svgPath: ImageConstant.imgVector,
                                  margin: getMargin(left: 27)),
                              actions: [
                                AppbarIconbutton(
                                    svgPath: ImageConstant.imgUpload,
                                    margin: getMargin(left: 27, right: 27))
                              ]),
                          CustomImageView(
                              imagePath: ImageConstant.imgReceipt,
                              height: getVerticalSize(512),
                              width: getHorizontalSize(260),
                              margin: getMargin(top: 38, bottom: 5))
                        ]))),
            bottomNavigationBar: Container(
                width: double.maxFinite,
                padding: getPadding(left: 123, top: 47, right: 123, bottom: 47),
                decoration: AppDecoration.blue,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: CustomIconButton(
                          height: 40,
                          width: 40,
                          margin: getMargin(top: 1, right: 24),
                          variant: IconButtonVariant.Black,
                          padding: IconButtonPadding.PaddingAll13,
                          onTap: () {
                            onTapBtnClose();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgClose))),
                  Expanded(
                      child: CustomIconButton(
                          height: 40,
                          width: 40,
                          margin: getMargin(left: 24, top: 1),
                          variant: IconButtonVariant.Black,
                          onTap: () {
                            onTapBtnCheckmark();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgCheckmark)))
                ]))));
  }

  onTapBtnClose() {
    Get.bottomSheet(
      ScannerBottomsheet(
        Get.put(
          ScannerController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapBtnCheckmark() {
    Get.toNamed(AppRoutes.receiptScreen);
  }
}
