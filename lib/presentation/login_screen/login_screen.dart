import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/core/utils/validation_functions.dart';
import 'package:smartconsulting/widgets/custom_button.dart';
import 'package:smartconsulting/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray900,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 27, top: 63, right: 27),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgVectorCyan600,
                              height: getSize(113),
                              width: getSize(113),
                              alignment: Alignment.center),
                          Padding(
                              padding: getPadding(left: 8),
                              child: Text("msg_smart_consulting".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtVartaRegular40.copyWith(
                                      letterSpacing: getHorizontalSize(0.8)))),
                          Padding(
                              padding: getPadding(top: 58),
                              child: Text("msg_direccion_de_correo".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanRegular14)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.group383Controller,
                              hintText: "msg_introduzca_su_email".tr,
                              margin: getMargin(top: 13),
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(top: 32),
                              child: Text("lbl_contrase_a".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanRegular14)),
                          Obx(() => CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.group381Controller,
                              hintText: "msg_introduzca_su_ontrase_a".tr,
                              margin: getMargin(top: 13),
                              textInputAction: TextInputAction.done,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30, top: 1, bottom: 1),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700A2),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(31)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: !controller.isShowPassword.value)),
                          CustomButton(
                              height: getVerticalSize(51),
                              text: "lbl_login".tr,
                              margin: getMargin(top: 50),
                              onTap: onTapLogin),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpassword();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 38),
                                      child: Text("msg_olvid_su_contrase_a".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistRomanRegular14Cyan600
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.28)))))),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_nuevo_usuario".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUrbanistRomanRegular14WhiteA700
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.28))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtCrearcuenta();
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 6),
                                        child: Text("lbl_crear_cuenta".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.28)))))
                              ]),
                        ])))));
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.dashboardScreen);
  }

  onTapTxtForgotpassword() {
    Get.toNamed(AppRoutes.forgotPasswordTypeOtpScreen);
  }

  onTapTxtCrearcuenta() {
    Get.toNamed(AppRoutes.registerScreen);
  }
}
