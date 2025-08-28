import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tugas1flutter/Tugas_14/model/user_model.dart';

Future<List<Welcome>> getUser() async {
  final response = await http.get(
    Uri.parse("https://thronesapi.com/api/v2/Characters"),
  );
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => Welcome.fromJson(json)).toList();
  } else {
    throw Exception("Gagal memuat");
  }
}
