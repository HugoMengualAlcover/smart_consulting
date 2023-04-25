import 'controller/login_register_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/widgets/custom_button.dart';

class LoginRegisterScreen extends GetWidget<LoginRegisterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 27, right: 27),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgVectorCyan600,
                          height: getSize(113),
                          width: getSize(113)),
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
                                      letterSpacing: getHorizontalSize(0.37)))),
                      CustomButton(
                          height: getVerticalSize(51),
                          text: "lbl_login".tr,
                          margin: getMargin(top: 120),
                          variant: ButtonVariant.OutlineWhiteA700,
                          fontStyle:
                              ButtonFontStyle.UrbanistRomanRegular20Cyan600,
                          onTap: onTapLogin),
                      CustomButton(
                          height: getVerticalSize(51),
                          text: "lbl_sign_up".tr,
                          margin: getMargin(top: 24),
                          onTap: onTapRegister),
                    ]))));
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapRegister() {
    Get.toNamed(AppRoutes.registerScreen);
  }
}
