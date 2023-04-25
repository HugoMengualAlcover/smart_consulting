import 'package:smartconsulting/models/invoice_model.dart';

import 'controller/crear_factura_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/widgets/custom_button.dart';
import 'package:smartconsulting/widgets/custom_text_form_field.dart';
import 'package:smartconsulting/core/utils/validation_functions.dart';

CustomButton btnContinuar = new CustomButton(
  height: getVerticalSize(51),
  width: getHorizontalSize(108),
  text: "lbl_siguiente".tr,
);

late BuildContext buildContext;

final CrearFacturaTwoController _controller =
    Get.put(CrearFacturaTwoController());

class CrearFacturaTwoScreen extends StatefulWidget {
  InvoiceModel invoice;

  CrearFacturaTwoScreen({Key? key, required this.invoice}) : super(key: key);

  @override
  State<CrearFacturaTwoScreen> createState() => _CrearFacturaTwoScreenState();
}

class _CrearFacturaTwoScreenState extends State<CrearFacturaTwoScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    buildContext = context;
    btnContinuar.onTap = onTapSiguiente;
    change();

    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.gray900,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: getMargin(all: 30),
                child: Text("msg_paso_2_datos".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanRegular18
                        .copyWith(letterSpacing: getHorizontalSize(0.36)))),
            Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: getPadding(all: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("lbl_descripci_n".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanRegular14),
                    CustomTextFormField(
                        onChanged: change,
                        focusNode: FocusNode(),
                        controller: _controller.descripcionController,
                        hintText: "msg_inserte_la_descripcion".tr,
                        margin: getMargin(top: 5, bottom: 25),
                        alignment: Alignment.center),
                    Text("lbl_precio_unitario".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanRegular14),
                    CustomTextFormField(
                        validator: (value) {
                          if (value == null ||
                              (!isValidPrice(value, isRequired: true))) {
                            return "Introduzca un valor valido, máximo dos decimales";
                          }
                          return null;
                        },
                        textInputType: TextInputType.phone,
                        onChanged: change,
                        focusNode: FocusNode(),
                        controller: _controller.precioUnitarioController,
                        hintText: "msg_inserte_el_precio".tr,
                        margin: getMargin(top: 5, bottom: 25),
                        alignment: Alignment.center),
                    Text("lbl_precio_total".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanRegular14),
                    CustomTextFormField(
                        validator: (value) {
                          if (value == null ||
                              (!isValidPrice(value, isRequired: true))) {
                            return "Introduzca un valor valido, máximo dos decimales";
                          }
                          return null;
                        },
                        textInputType: TextInputType.phone,
                        onChanged: change,
                        focusNode: FocusNode(),
                        controller: _controller.precioTotalController,
                        hintText: "msg_inserte_el_precio2".tr,
                        margin: getMargin(top: 5, bottom: 25),
                        alignment: Alignment.center),
                    Text("lbl_iva".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanRegular14),
                    CustomTextFormField(
                        validator: (value) {
                          if (value == null ||
                              (!isValidPrice(value, isRequired: true))) {
                            return "Introduzca un valor valido, máximo dos decimales";
                          }
                          return null;
                        },
                        textInputType: TextInputType.phone,
                        onChanged: change,
                        focusNode: FocusNode(),
                        controller: _controller.ivaController,
                        hintText: "lbl_inserte_el_iva".tr,
                        margin: getMargin(top: 5, bottom: 25),
                        alignment: Alignment.center),
                    Text("lbl_precio_final".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanRegular14),
                    CustomTextFormField(
                        validator: (value) {
                          if (value == null ||
                              (!isValidPrice(value, isRequired: true))) {
                            return "Introduzca un valor valido, máximo dos decimales";
                          }
                          return null;
                        },
                        textInputType: TextInputType.phone,
                        onChanged: change,
                        focusNode: FocusNode(),
                        controller: _controller.precioFinalController,
                        hintText: "msg_inserte_el_precio3".tr,
                        margin: getMargin(top: 5, bottom: 25),
                        textInputAction: TextInputAction.done,
                        alignment: Alignment.center),
                  ],
                ),
              ),
            ),
          ]),
      bottomNavigationBar: Container(
        margin: getMargin(top: 27, left: 27, right: 27, bottom: 27),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomButton(
              height: getVerticalSize(51),
              width: getHorizontalSize(108),
              text: "lbl_atras".tr,
              onTap: onTapAtras),
          btnContinuar,
        ]),
      ),
    ));
  }

  change() {
    if ((_controller.descripcionController.text != "") &
        (_controller.precioUnitarioController.text != "") &
        (_controller.precioTotalController.text != "") &
        (_controller.ivaController.text != "") &
        (_controller.precioFinalController.text != "")) {
      btnContinuar.enabled = true;
      void rebuild(Element el) {
        el.markNeedsBuild();
        el.visitChildren(rebuild);
      }

      (buildContext as Element).visitChildren(rebuild);
    } else {
      btnContinuar.enabled = false;
      void rebuild(Element el) {
        el.markNeedsBuild();
        el.visitChildren(rebuild);
      }

      (buildContext as Element).visitChildren(rebuild);
    }
  }

  onTapAtras() {
    Get.toNamed(AppRoutes.crearFacturaOneScreen);
  }

  onTapSiguiente() {
    if (_formKey.currentState!.validate()) {
      widget.invoice.setDesc = _controller.descripcionController.text;
      widget.invoice.setPrecioUnitario =
          double.parse(_controller.precioUnitarioController.text);
      widget.invoice.setPrecioTotal =
          double.parse(_controller.precioTotalController.text);
      widget.invoice.setIva = double.parse(_controller.ivaController.text);
      widget.invoice.setPrecioFinal =
          double.parse(_controller.precioFinalController.text);
      Get.toNamed(AppRoutes.crearFacturaThreeScreen, arguments: widget.invoice);
    }
  }
}
