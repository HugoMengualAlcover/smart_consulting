import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/presentation/scanner_bottomsheet/models/scanner_model.dart';

class ScannerController extends GetxController {
  Rx<ScannerModel> scannerModelObj = ScannerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
