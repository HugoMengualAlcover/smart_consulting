import '../controller/crear_factura_one_controller.dart';
import 'package:get/get.dart';

class CrearFacturaOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CrearFacturaOneController());
  }
}
