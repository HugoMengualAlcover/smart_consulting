import '../controller/crear_factura_three_controller.dart';
import 'package:get/get.dart';

class CrearFacturaThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CrearFacturaThreeController());
  }
}
