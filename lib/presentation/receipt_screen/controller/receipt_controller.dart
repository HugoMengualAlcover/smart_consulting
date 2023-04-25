import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/presentation/receipt_screen/models/receipt_model.dart';

class ReceiptController extends GetxController {
  Rx<ReceiptModel> receiptModelObj = ReceiptModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(AppRoutes.loginRegisterScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
