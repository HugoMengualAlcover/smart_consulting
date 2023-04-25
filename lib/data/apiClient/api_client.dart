import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';
import 'package:http/http.dart' as http;
import 'package:smartconsulting/models/invoice_model.dart';
import 'package:http_parser/src/media_type.dart';

class ApiClient extends GetConnect {
  final String baseUrl = "http://192.168.1.44:8000/api";

  Future<int> getInvoiceId() async {
    final response = await http.get(Uri.parse('$baseUrl/getInvoice'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['id'] as int;
    }
    if (response.statusCode == 500)
      return 0;
    else
      return 0;
  }

  Future<int> putInvoice(InvoiceModel invoice) async {
    print(jsonEncode(invoice));
    final response = await http.post(Uri.parse('$baseUrl/putInvoice'),
        body: jsonEncode(invoice),
        headers: {'Content-Type': 'aplication/json'});

    print(response.statusCode);

    if (response.statusCode == 200) {
      return 1;
    } else
      print(response.body);
      return 0;
  }

  Future<int> putExpense(File expense) async {
    final bytes = await expense.readAsBytes();
    print("----1----");
    final b64img = base64.encode(bytes);
    print("----2----");

    final response = await http.post(Uri.parse('$baseUrl/putExpense'),
        body: {"image" : b64img});

    print("---3---");
    print(response.body);

    if (response.statusCode == 200) {
      return 1;
    } else
      print(response.statusCode);
    return 0;
  }
}
