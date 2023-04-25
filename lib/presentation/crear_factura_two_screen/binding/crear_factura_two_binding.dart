import '../controller/crear_factura_two_controller.dart';
import 'package:get/get.dart';

class CrearFacturaTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CrearFacturaTwoController());
  }
}
