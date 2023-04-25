import 'dart:io';

import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/data/apiClient/api_client.dart';
import 'package:smartconsulting/presentation/dashboard_screen/models/dashboard_model.dart';

class DashboardController extends GetxController {
  Rx<DashboardModel> dashboardModelObj = DashboardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
