import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

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
