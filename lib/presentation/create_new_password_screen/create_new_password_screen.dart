import 'controller/create_new_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/widgets/app_bar/appbar_image_1.dart';
import 'package:smartconsulting/widgets/app_bar/appbar_subtitle.dart';
import 'package:smartconsulting/widgets/app_bar/custom_app_bar.dart';
import 'package:smartconsulting/widgets/custom_button.dart';
import 'package:smartconsulting/widgets/custom_checkbox.dart';
import 'package:smartconsulting/widgets/custom_text_form_field.dart';

class CreateNewPasswordScreen extends GetWidget<CreateNewPasswordController> {
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
                    margin: getMargin(left: 21, top: 16, bottom: 15),
                    onTap: onTapArrowleft1),
                title: AppbarSubtitle(
                    text: "msg_olvid_mi_contrase_a".tr,
                    margin: getMargin(left: 20))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 21, top: 49, right: 21, bottom: 49),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage,
                          height: getSize(262),
                          width: getSize(262),
                          alignment: Alignment.center,
                          margin: getMargin(top: 14)),
                      Padding(
                          padding: getPadding(top: 50),
                          child: Text("msg_crea_una_nueva_contrase_a".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular1401.copyWith(
                                  letterSpacing: getHorizontalSize(0.18)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.passwordController,
                          hintText: "lbl".tr,
                          margin: getMargin(top: 21),
                          variant: TextFormFieldVariant.FillBluegray900,
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistSemiBold1226,
                          prefix: Container(
                              margin: getMargin(
                                  left: 17, top: 17, right: 10, bottom: 17),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 18, right: 12, bottom: 18),
                              decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700A2),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgEye)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.passwordOneController,
                          hintText: "lbl".tr,
                          margin: getMargin(top: 21),
                          variant: TextFormFieldVariant.FillBluegray900,
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistSemiBold1226,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 17, top: 17, right: 10, bottom: 17),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 18, right: 12, bottom: 18),
                              decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700A2),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgEye)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52))),
                      Obx(() => CustomCheckbox(
                          text: "lbl_recu_rdame".tr,
                          value: controller.checkbox.value,
                          margin: getMargin(top: 21),
                          fontStyle:
                              CheckboxFontStyle.UrbanistSemiBold1226WhiteA700,
                          onChange: (value) {
                            controller.checkbox.value = value;
                          }))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(48),
                text: "lbl_continuar".tr,
                margin: getMargin(left: 21, right: 21, bottom: 43),
                variant: ButtonVariant.FillCyan600,
                shape: ButtonShape.CircleBorder24,
                fontStyle: ButtonFontStyle.UrbanistBold1401)));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
