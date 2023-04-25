import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 35, top: 20, right: 35),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgVectorCyan600,
                          height: getSize(113),
                          width: getSize(113),
                          margin: getMargin(top: 1)),
                      Text("msg_smart_consulting".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtVartaRegular40
                              .copyWith(letterSpacing: getHorizontalSize(0.8))),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("msg_no_more_paper_receipt".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanRegular1832
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.37))))
                    ]))));
  }
}
