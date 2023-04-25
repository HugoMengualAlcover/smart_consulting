import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  TextEditingController group404Controller = TextEditingController();

  TextEditingController group402Controller = TextEditingController();

  TextEditingController group400Controller = TextEditingController();

  TextEditingController group398Controller = TextEditingController();

  TextEditingController group396Controller = TextEditingController();

  TextEditingController group394Controller = TextEditingController();

  TextEditingController group392Controller = TextEditingController();

  TextEditingController group390Controller = TextEditingController();

  TextEditingController group388Controller = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group404Controller.dispose();
    group402Controller.dispose();
    group400Controller.dispose();
    group398Controller.dispose();
    group396Controller.dispose();
    group394Controller.dispose();
    group392Controller.dispose();
    group390Controller.dispose();
    group388Controller.dispose();
  }
}
