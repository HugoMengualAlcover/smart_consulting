import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/core/utils/validation_functions.dart';
import 'package:smartconsulting/widgets/app_bar/appbar_image_1.dart';
import 'package:smartconsulting/widgets/app_bar/custom_app_bar.dart';
import 'package:smartconsulting/widgets/custom_button.dart';
import 'package:smartconsulting/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(103),
                centerTitle: true,
                title:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  AppbarImage1(
                      height: getSize(78),
                      width: getSize(78),
                      svgPath: ImageConstant.imgVectorCyan600113x113,
                      margin: getMargin(all: 15)),
                  Column(
                    children: [
                      Container(
                        height: 45,
                        margin: getMargin(top: 20),
                        child: Text("Smart",
                            textAlign: TextAlign.center,
                            style: AppStyle.txtVartaRegular40Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(0.8),
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Container(
                        height: 50,
                        margin: getMargin(bottom: 10),
                        child: Text("Consulting",
                            textAlign: TextAlign.center,
                            style: AppStyle.txtVartaRegular40Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(0.8),
                            )),
                      )
                    ],
                  )
                ])),
            body: SingleChildScrollView(
              child: Form(
                  key: _formKey,
                  child: Container(
                      width: double.maxFinite,
                      padding:
                          getPadding(left: 27, top: 16, right: 27, bottom: 16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("lbl_identificador".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanRegular14),
                            CustomTextFormField(
                              focusNode: FocusNode(),
                              margin: getMargin(bottom: 20),
                              controller: controller.group404Controller,
                              hintText: "msg_introduzca_id_proporcionada".tr,
                            ),
                            Text("lbl_nombre".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanRegular14),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: controller.group402Controller,
                                hintText: "msg_introduzca_su_nombre".tr,
                                margin: getMargin(bottom: 20)),
                            Text("lbl_apellidos".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanRegular14),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: controller.group400Controller,
                                hintText: "msg_introduzca_sus_apellidos".tr,
                                margin: getMargin(bottom: 20)),
                            Text("lbl_email".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanRegular14),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: controller.group398Controller,
                                hintText: "msg_introduzca_su_email".tr,
                                margin: getMargin(bottom: 20),
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                }),
                            Text("msg_numero_de_telefono".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanRegular14
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.28))),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: controller.group396Controller,
                                hintText: "msg_introduzca_su_numero".tr,
                                margin: getMargin(bottom: 20)),
                            Text("lbl_asesor".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanRegular14),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: controller.group394Controller,
                                hintText: "lbl_asesor".tr,
                                margin: getMargin(bottom: 20),
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30, top: 9, right: 9, bottom: 9),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700),
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgDropdownIcon)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(31))),
                            Text("lbl_contrase_a".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanRegular14),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: controller.group392Controller,
                                hintText: "msg_introduzca_su_contrasenya".tr,
                                margin: getMargin(bottom: 20),
                                suffix: Container(
                                    margin:
                                        getMargin(left: 30, top: 1, bottom: 1),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700A2),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgEye)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(31))),
                            Text("msg_confirmar_contrase_a".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanRegular14),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: controller.group390Controller,
                                hintText: "msg_introduzca_su_contrasenya".tr,
                                margin: getMargin(bottom: 20),
                                suffix: Container(
                                    margin:
                                        getMargin(left: 30, top: 1, bottom: 1),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700A2),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgEye)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(31))),
                            Text("Logo",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanRegular14),
                            Container(
                                height: getVerticalSize(31),
                                width: getHorizontalSize(321),
                                margin: getMargin(top: 3, bottom: 8),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomButton(
                                          margin: getMargin(bottom: 8),
                                          height: getVerticalSize(20),
                                          width: getHorizontalSize(50),
                                          text: "lbl_elegir".tr,
                                          padding: ButtonPadding.PaddingAll4,
                                          fontStyle: ButtonFontStyle
                                              .UrbanistRomanRegular12,
                                          alignment: Alignment.topRight),
                                      CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.group396Controller,
                                        hintText: "msg_elija_su_logo".tr,
                                      ),
                                    ]))
                          ]))),
            ),
            bottomNavigationBar: CustomButton(
                onTap: onTapRegister,
                height: getVerticalSize(51),
                text: "lbl_crear_cuenta".tr,
                margin: getMargin(top: 27, left: 27, right: 27, bottom: 27))));
  }
}

onTapRegister() {
  Get.toNamed(AppRoutes.dashboardScreen);
}
