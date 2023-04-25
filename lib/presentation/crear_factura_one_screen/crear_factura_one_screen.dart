import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:smartconsulting/data/apiClient/api_client.dart';
import 'package:smartconsulting/models/invoice_model.dart';
import 'package:smartconsulting/widgets/date_picker_widget.dart';

import 'controller/crear_factura_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/widgets/custom_button.dart';
import 'package:smartconsulting/widgets/custom_text_form_field.dart';
import 'package:smartconsulting/core/utils/validation_functions.dart';

// ignore_for_file: must_be_immutable
CustomButton btnContinuar = new CustomButton(
  height: getVerticalSize(51),
  width: getHorizontalSize(108),
  text: "lbl_siguiente".tr,
);

late BuildContext buildContext;

final CrearFacturaOneController _controller =
    Get.put(CrearFacturaOneController(/*callBackFunction: refresh()*/));

class CrearFacturaOneScreen extends StatefulWidget {
  @override
  State<CrearFacturaOneScreen> createState() => CrearFacturaOneScreenState();
}

class CrearFacturaOneScreenState extends State<CrearFacturaOneScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  GlobalKey btnKey = GlobalKey();

  InvoiceModel invoice = new InvoiceModel();

  late DateTime selectedDate = DateTime.now();

  bool isIdOk = true;

  final Future<int> futureid = ApiClient().getInvoiceId();
  late int id;

  @override
  Widget build(BuildContext context) {
    buildContext = context;
    btnContinuar.onTap = onTapSiguiente;
    change();

    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.gray900,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              margin: getMargin(all: 30),
              child: Text("msg_paso_1_datos_del".tr,
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
                        Text("lbl_id_autom_tica".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanRegular14),
                        FutureBuilder<int>(
                          future: futureid,
                          builder: (BuildContext context,
                              AsyncSnapshot<int> snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center(child: CircularProgressIndicator());
                            } else if (snapshot.hasError ||
                                snapshot.data == 0) {
                              isIdOk = false;
                              return CustomTextFormField(
                                  enabled: false,
                                  variant: TextFormFieldVariant.FillRed,
                                  focusNode: FocusNode(),
                                  initialValue: 'Error interno, reintentar',
                                  margin: getMargin(top: 5, bottom: 25),
                                  alignment: Alignment.center);
                            } else {
                              id = snapshot.data!;
                              return CustomTextFormField(
                                  enabled: false,
                                  focusNode: FocusNode(),
                                  initialValue: snapshot.data.toString(),
                                  hintText: "lbl_inserte_la_id".tr,
                                  margin: getMargin(top: 5, bottom: 25),
                                  alignment: Alignment.center);
                            }
                          },
                        ),
                        Text("msg_nombre_del_cliente".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanRegular14),
                        CustomTextFormField(
                            onChanged: change,
                            focusNode: FocusNode(),
                            controller: _controller.nombreController,
                            hintText: "msg_inserte_el_nombre".tr,
                            margin: getMargin(top: 5, bottom: 25),
                            alignment: Alignment.center),
                        Text("lbl_cif_del_cliente".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanRegular14),
                        Stack(
                          children: [
                            CustomTextFormField(
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidCif(value, isRequired: true))) {
                                    return "Introduzca un CIF valido";
                                  }
                                  return null;
                                },
                                onChanged: change,
                                focusNode: FocusNode(),
                                controller: _controller.cifClienteController,
                                hintText: "lbl_inserte_el_cif".tr,
                                margin: getMargin(top: 5, bottom: 25),
                                alignment: Alignment.center),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 3, 5),
                                child: Tooltip(
                                  message:
                                      "El CIF debe empezar por una letra mayuscula seguida de 8 numeros",
                                  child: Icon(
                                    Icons.help,
                                    color: Colors.lightBlueAccent,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Text("msg_fecha_de_invoice".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanRegular14),
                        DatePickerWidget(
                          initialDate: DateTime.now(),
                          onCallback: setDate,
                        ),
                      ])))
        ],
      ),
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
    if (isIdOk &
        (_controller.nombreController.text != "") &
        (_controller.cifClienteController.text != "")) {
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

  setDate(DateTime d) {
    selectedDate = d;
  }

  onTapAtras() {
    Get.toNamed(AppRoutes.dashboardScreen);
  }

  onTapSiguiente() {
    if (_formKey.currentState!.validate()) {
      invoice.setId = id;
      invoice.nombre = _controller.nombreController.text;
      invoice.cifCliente = _controller.cifClienteController.text;
      invoice.fecha = DateUtils.dateOnly(selectedDate);
      Get.toNamed(AppRoutes.crearFacturaTwoScreen, arguments: invoice);
    }
  }
}
