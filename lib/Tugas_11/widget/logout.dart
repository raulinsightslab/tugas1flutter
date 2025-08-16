import 'package:flutter/material.dart';
import 'package:tugas1flutter/Tugas_11/preference/preference.dart';
import 'package:tugas1flutter/Tugas_7/login_page.dart';
import 'package:tugas1flutter/extension/navigation.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        PreferenceHandler.removeLogin();
        context.pushReplacementNamed(LoginPage.id);
      },
      child: Text("Keluar"),
    );
  }
}
