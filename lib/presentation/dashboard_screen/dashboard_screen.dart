import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:smartconsulting/data/apiClient/api_client.dart';

import 'controller/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';

import 'package:document_scanner/document_scanner.dart';


class DashboardScreen extends GetWidget<DashboardController> {
  final DashboardController _controller =
  Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, right: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: getMargin(bottom: 100),
                          child: ElevatedButton.icon(
                            onPressed: onTapCrearFactura,
                            icon: Icon(
                              Icons.receipt_long,
                              color: ColorConstant.black800,
                              size: 24.0,
                            ),
                            label: Text('lbl_emitir_invoice'.tr), // <-- Text
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(width, 48),
                              backgroundColor: ColorConstant.cyan600,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadiusStyle.circleBorder24),
                            ),
                          )),
                      Container(
                          child: ElevatedButton.icon(
                            onPressed: onTapCargarGastos,
                            icon: Icon(
                              Icons.camera_alt,
                              color: ColorConstant.black800,
                              size: 24.0,
                            ),
                            label: Text('lbl_cargar_gastos'.tr), // <-- Text
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(width, 48),
                              backgroundColor: ColorConstant.cyan600,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusStyle
                                      .circleBorder24),
                            ),
                          )),
                    ]))));
  }

  onTapCrearFactura() {
    Get.toNamed(AppRoutes.crearFacturaOneScreen);
  }

  uploadImage(File scDoc) async {
    bool isAllOk = await putExpense1(scDoc);
    if (isAllOk){
      Fluttertoast.showToast(
          msg: "Imagen/imagenes enviada/s correctamente",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
    }else{
      Fluttertoast.showToast(
          msg: "Errror al guardar. Si ha subido varias imagenes puede que solo alguna se haya subido.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      Fluttertoast.showToast(
          msg: "Reintente.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  onTapCargarGastos() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);

    File scannedDocument;

    return DocumentScanner(
      onDocumentScanned: (ScannedImage scImg) {
        print("document : " + scImg.croppedImage!);
        scannedDocument = scImg.getScannedDocumentAsFile();
        uploadImage(scannedDocument);
      },
    );
  }

  Future<bool> putExpense1(File file) async {
    bool isOk = false;

    int a = await ApiClient().putExpense(file);
    if (a == 1) isOk = true;
    else isOk = false;

    print(isOk);
    return isOk;
  }
}
   /* List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });


    bool isAllOk = await putExpense(imageList!.cast<String>());
    if (isAllOk){
     Fluttertoast.showToast(
         msg: "Imagen/imagenes enviada/s correctamente",
         toastLength: Toast.LENGTH_SHORT,
         gravity: ToastGravity.BOTTOM,
         timeInSecForIosWeb: 1,
         backgroundColor: Colors.green,
         textColor: Colors.white,
         fontSize: 16.0);
    }else{
     Fluttertoast.showToast(
         msg: "Errror al guardar. Si ha subido varis imagenes puede que solo alguna se hayan subido.",
         toastLength: Toast.LENGTH_LONG,
         gravity: ToastGravity.CENTER,
         timeInSecForIosWeb: 1,
         backgroundColor: Colors.red,
         textColor: Colors.white,
         fontSize: 16.0);
     Fluttertoast.showToast(
         msg: "Reintente.",
         toastLength: Toast.LENGTH_SHORT,
         gravity: ToastGravity.CENTER,
         timeInSecForIosWeb: 1,
         backgroundColor: Colors.red,
         textColor: Colors.white,
         fontSize: 16.0);
   }

   Future<bool> putExpense(List<String> files) async {
    bool isOk = false;

    if (files != []){
      for (int i = 0; i < files.length; i++){
        String f = files[i];
        File file = File(f);
        int a = await ApiClient().putExpense(file);
        if (a == 1) isOk = true;
        else isOk = false;
      }
    }
    print(isOk);
    return isOk;
  }

  }*/
