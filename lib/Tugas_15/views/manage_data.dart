import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tugas1flutter/Tugas_15/api/endpoint/endpoint.dart';
import 'package:tugas1flutter/preference/preference.dart';
import 'package:tugas1flutter/Tugas_15/model/get_user_model.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  GetUserModel? userData;
  bool isLoading = true;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      final token = await PreferenceHandler.getToken();
      print("Token yang dipakai: $token");

      final response = await http.get(
        Uri.parse(Endpoint.profile),
        headers: {
          "Authorization": "Bearer $token",
          "Content-Type": "application/json",
        },
      );

      if (response.statusCode == 200) {
        final data = GetUserModel.fromJson(jsonDecode(response.body));
        setState(() {
          userData = data;
          isLoading = false;
        });
      } else {
        setState(() {
          errorMessage = "Gagal: ${response.body}";
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = e.toString();
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Saya"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : errorMessage.isNotEmpty
          ? Center(
              child: Text(
                "Error: $errorMessage",
                style: const TextStyle(color: Colors.red),
              ),
            )
          : userData == null
          ? const Center(child: Text("Data tidak tersedia"))
          : Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ID: ${userData?.data?.id ?? '-'}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Nama: ${userData?.data?.name ?? '-'}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Email: ${userData?.data?.email ?? '-'}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Dibuat pada: ${userData?.data?.createdAt ?? '-'}",
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
    );
  }
}
