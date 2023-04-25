import 'controller/receipt_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/widgets/app_bar/custom_app_bar.dart';

class ReceiptScreen extends GetWidget<ReceiptController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(97),
                leadingWidth: 52,
                leading: CustomImageView(
                    svgPath: ImageConstant.imgMaximize,
                    height: getVerticalSize(16),
                    width: getHorizontalSize(25),
                    radius: BorderRadius.circular(getHorizontalSize(1)),
                    margin: getMargin(left: 27, top: 18, bottom: 21)),
                title: Padding(
                    padding: getPadding(left: 14),
                    child: Text("lbl_ticket".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanMedium16.copyWith(
                            letterSpacing: getHorizontalSize(0.32))))),
            body: Container(
                width: double.maxFinite,
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 10),
                    padding:
                        getPadding(left: 57, top: 85, right: 57, bottom: 85),
                    decoration: AppDecoration.fillYellow800,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgReceipt,
                              height: getVerticalSize(532),
                              width: getHorizontalSize(260))
                        ])))));
  }
}
