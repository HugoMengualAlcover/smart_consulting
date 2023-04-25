import '../../data/apiClient/api_client.dart';
import '../../models/invoice_model.dart';
import 'controller/crear_factura_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/widgets/custom_button.dart';
import 'package:smartconsulting/widgets/custom_text_form_field.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CrearFacturaThreeScreen extends StatefulWidget {
  InvoiceModel invoice;

  CrearFacturaThreeScreen({Key? key, required this.invoice}) : super(key: key);

  @override
  State<CrearFacturaThreeScreen> createState() =>
      _CrearFacturaThreeScreenState();
}

class _CrearFacturaThreeScreenState extends State<CrearFacturaThreeScreen> {
  final CrearFacturaThreeController _controller =
      Get.put(CrearFacturaThreeController());

  @override
  Widget build(BuildContext context) {
    InvoiceModel invoice = widget.invoice;

    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 30, right: 15, bottom: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 1),
                              child: Text("msg_paso_3_validar".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanRegular18
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.36))))),
                      CustomTextFormField(
                          enabled: false,
                          focusNode: FocusNode(),
                          initialValue: "lbl_id_autom_tica2".tr +
                              invoice.getId.toString(),
                          margin: getMargin(left: 14, top: 27, right: 14),
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRomanRegular14),
                      CustomTextFormField(
                          enabled: false,
                          focusNode: FocusNode(),
                          initialValue:
                              "msg_nombre_del_cliente2".tr + invoice.getNombre,
                          margin: getMargin(left: 14, top: 30, right: 14),
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRomanRegular14),
                      CustomTextFormField(
                          enabled: false,
                          focusNode: FocusNode(),
                          initialValue:
                              "msg_cif_del_cliente".tr + invoice.getCifCliente,
                          margin: getMargin(left: 14, top: 30, right: 14),
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRomanRegular14),
                      CustomTextFormField(
                          enabled: false,
                          focusNode: FocusNode(),
                          initialValue: "msg_fecha_de_invoice2".tr +
                              DateUtils.dateOnly(invoice.getFecha).toString(),
                          margin: getMargin(left: 14, top: 30, right: 14),
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRomanRegular14),
                      CustomTextFormField(
                          enabled: false,
                          focusNode: FocusNode(),
                          hintText: "lbl_descripci_n2".tr +
                              invoice.getDesc.toString(),
                          margin: getMargin(left: 14, top: 32, right: 14),
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRomanRegular14),
                      CustomTextFormField(
                          enabled: false,
                          focusNode: FocusNode(),
                          hintText: "msg_precio_unitario".tr +
                              invoice.getPrecioUnitario.toString(),
                          margin: getMargin(left: 14, top: 30, right: 14),
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRomanRegular14),
                      CustomTextFormField(
                          enabled: false,
                          focusNode: FocusNode(),
                          hintText: "lbl_precio_total2".tr +
                              invoice.getPrecioTotal.toString(),
                          margin: getMargin(left: 14, top: 30, right: 14),
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRomanRegular14),
                      CustomTextFormField(
                          enabled: false,
                          focusNode: FocusNode(),
                          hintText: "lbl_iva2".tr + invoice.getIva.toString(),
                          margin: getMargin(left: 14, top: 30, right: 14),
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRomanRegular14),
                      CustomTextFormField(
                          enabled: false,
                          focusNode: FocusNode(),
                          hintText: "lbl_precio_final2".tr +
                              invoice.getPrecioFinal.toString(),
                          margin: getMargin(left: 14, top: 30, right: 14),
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRomanRegular14,
                          textInputAction: TextInputAction.done),
                      Spacer(),
                      Padding(
                          padding: getPadding(bottom: 30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(51),
                                    width: getHorizontalSize(108),
                                    text: "lbl_atras".tr,
                                    onTap: onTapAtras),
                                CustomButton(
                                    height: getVerticalSize(51),
                                    width: getHorizontalSize(108),
                                    text: "lbl_enviar".tr,
                                    onTap: onTapEnviar)
                              ]))
                    ]))));
  }

  onTapAtras() {
    Get.toNamed(AppRoutes.crearFacturaTwoScreen, arguments: widget.invoice);
  }

  onTapEnviar() async {
    int res = await ApiClient().putInvoice(widget.invoice);
    print(res);
    if (res == 1) {
      Fluttertoast.showToast(
          msg: "La invoice ha sido enviada correctamente",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
      Get.toNamed(AppRoutes.dashboardScreen);
    } else
      Fluttertoast.showToast(
          msg: "Error, reintentar más tarde",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
  }
}
