import 'controller/forgot_password_type_otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/widgets/app_bar/appbar_image_1.dart';
import 'package:smartconsulting/widgets/app_bar/appbar_subtitle.dart';
import 'package:smartconsulting/widgets/app_bar/custom_app_bar.dart';
import 'package:smartconsulting/widgets/custom_button.dart';

class ForgotPasswordTypeOtpScreen
    extends GetWidget<ForgotPasswordTypeOtpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 45,
                leading: AppbarImage1(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 21, top: 14, bottom: 17),
                    onTap: onTapArrowleft),
                title: AppbarSubtitle(
                    text: "msg_olvid_mi_contrase_a".tr,
                    margin: getMargin(left: 14))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 29, right: 29),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(top: 14),
                          child: Text("msg_se_ha_enviado_un".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular1401.copyWith(
                                  letterSpacing: getHorizontalSize(0.18)))),
                      Padding(
                          padding: getPadding(top: 51),
                          child: Obx(() => PinCodeTextField(
                              appContext: context,
                              controller: controller.otpController.value,
                              length: 4,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
                              textStyle: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(21.018789291381836),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700),
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(53),
                                  fieldWidth: getHorizontalSize(68),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(10)),
                                  selectedFillColor: ColorConstant.blueGray900,
                                  activeFillColor: ColorConstant.blueGray900,
                                  inactiveFillColor: ColorConstant.blueGray900,
                                  inactiveColor: ColorConstant.gray800,
                                  selectedColor: ColorConstant.gray800,
                                  activeColor: ColorConstant.gray800)))),
                      Padding(
                          padding: getPadding(top: 54),
                          child: Text("lbl_reenviar_correo".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular1401.copyWith(
                                  letterSpacing: getHorizontalSize(0.18))))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(48),
                text: "lbl_verificar".tr,
                margin: getMargin(left: 21, right: 21, bottom: 43),
                shape: ButtonShape.CircleBorder24,
                fontStyle: ButtonFontStyle.UrbanistBold1401,
                onTap: onTapVerificar)));
  }

  onTapVerificar() {
    Get.toNamed(AppRoutes.createNewPasswordScreen);
  }

  onTapArrowleft() {
    Get.back();
  }
}
