import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/presentation/crear_factura_two_screen/models/crear_factura_two_model.dart';
import 'package:flutter/material.dart';

class CrearFacturaTwoController extends GetxController {
  TextEditingController descripcionController = TextEditingController();

  TextEditingController precioUnitarioController = TextEditingController();

  TextEditingController precioTotalController = TextEditingController();

  TextEditingController ivaController = TextEditingController();

  TextEditingController precioFinalController = TextEditingController();

  Rx<CrearFacturaTwoModel> crearFacturaTwoModelObj = CrearFacturaTwoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    descripcionController.dispose();
    precioUnitarioController.dispose();
    precioTotalController.dispose();
    ivaController.dispose();
    precioFinalController.dispose();
  }
}
