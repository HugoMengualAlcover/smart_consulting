import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/data/apiClient/api_client.dart';
import 'package:smartconsulting/models/invoice_model.dart';
import 'package:smartconsulting/presentation/crear_factura_three_screen/models/crear_factura_three_model.dart';
import 'package:flutter/material.dart';

class CrearFacturaThreeController extends GetxController {
  TextEditingController languageController = TextEditingController();

  TextEditingController nombreclienteController = TextEditingController();

  TextEditingController cifclienteController = TextEditingController();

  TextEditingController fechainvoiceController = TextEditingController();

  TextEditingController descricionController = TextEditingController();

  TextEditingController preciounitarioController = TextEditingController();

  TextEditingController languageOneController = TextEditingController();

  TextEditingController ivaController = TextEditingController();

  TextEditingController preciofinalController = TextEditingController();

  Rx<CrearFacturaThreeModel> crearFacturaThreeModelObj =
      CrearFacturaThreeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
    nombreclienteController.dispose();
    cifclienteController.dispose();
    fechainvoiceController.dispose();
    descricionController.dispose();
    preciounitarioController.dispose();
    languageOneController.dispose();
    ivaController.dispose();
    preciofinalController.dispose();
  }
}
