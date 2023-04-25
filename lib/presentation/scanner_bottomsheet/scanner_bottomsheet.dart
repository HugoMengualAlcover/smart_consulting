import 'controller/scanner_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ScannerBottomsheet extends StatefulWidget {
  ScannerBottomsheet(this.controller);

  ScannerController controller;

  @override
  State<ScannerBottomsheet> createState() => _ScannerBottomsheetState();
}

class _ScannerBottomsheetState extends State<ScannerBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 162, top: 42, right: 162, bottom: 42),
                decoration: AppDecoration.blue,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /*CustomImageView(
                          svgPath: ImageConstant.imgUser,
                          height: getSize(50),
                          width: getSize(50),
                          margin: getMargin(top: 1),
                          onTap: () {
                            onTapImgUser();
                          })*/Text("data"),
                    ]))));
  }

  onTapImgUser() {
    Get.toNamed(AppRoutes.scanningScreen);
  }
}
