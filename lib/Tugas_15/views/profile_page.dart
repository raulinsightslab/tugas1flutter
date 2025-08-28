import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:tugas1flutter/Tugas_15/api/endpoint/endpoint.dart';
import 'package:tugas1flutter/Tugas_15/model/get_user_model.dart';
import 'package:tugas1flutter/preference/preference.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  GetUserModel? userData;
  bool isLoading = true;
  String errorMessage = "error";
  
  get uri => null;

  @override
  void initState(){
    super.initState();
    _loadProfile();
  }
  Future<void>_loadProfile() async{
    setState(() {
      isLoading =true;
      errorMessage = "error";
    });

    try {
    final token = await PreferenceHandler.getToken();
    print("token yang digunakan : $token");

    final response = await http.get(
      Uri.parse(Endpoint.profile),
      headers: {
        "Authoriztion" : "Bearee $token",
        "Content-Type" : "aplication/json",
      },
    );
    if (response.statusCode == 200){
      final data = GetUserModel.fromJson(jsonDecode(response.body));
      setState(() {
        userData = data;
        isLoading = false;
      });
    }
  }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}