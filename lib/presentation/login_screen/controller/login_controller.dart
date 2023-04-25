import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController group383Controller = TextEditingController();

  TextEditingController group381Controller = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group383Controller.dispose();
    group381Controller.dispose();
  }
}
