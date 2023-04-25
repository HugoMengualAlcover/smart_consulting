import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/presentation/scanning_screen/models/scanning_model.dart';

class ScanningController extends GetxController {
  Rx<ScanningModel> scanningModelObj = ScanningModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
