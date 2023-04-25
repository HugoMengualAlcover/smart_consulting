import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/data/apiClient/api_client.dart';
import 'package:smartconsulting/presentation/crear_factura_one_screen/models/crear_factura_one_model.dart';
import 'package:flutter/material.dart';

class CrearFacturaOneController extends GetxController {
  final Function? callBackFunction;
  CrearFacturaOneController({this.callBackFunction});

  TextEditingController idAutoController = TextEditingController();

  TextEditingController nombreController = TextEditingController();

  TextEditingController cifClienteController = TextEditingController();

  Rx<CrearFacturaOneModel> crearFacturaOneModelObj = CrearFacturaOneModel().obs;

  @override
  void onReady() {
    //watchControllers();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    idAutoController.dispose();
    nombreController.dispose();
    cifClienteController.dispose();
  }
}
