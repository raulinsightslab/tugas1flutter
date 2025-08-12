import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key, this.appBar});
  final bool? appBar;
  static const id = "/Check";

  @override
  State<CheckboxPage> createState() => _CheckboxState();
}

class _CheckboxState extends State<CheckboxPage> {
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    // final showAppBar = widget.appBar ?? true;
    return Scaffold(
      // appBar: showAppBar
      //     ? AppBar(
      //         backgroundColor: const Color(0xFF0A0F24),
      //         title: const Text(
      //           "Terms & Conditions",
      //           style: TextStyle(
      //             fontSize: 25,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white,
      //             fontFamily: "Orbitron",
      //           ),
      //         ),
      //       )
      //     : null,
      // drawer: showAppBar ? const Drawer() : null,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF142850),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    """Selamat datang di aplikasi kami!
Dengan menggunakan aplikasi ini, Anda setuju untuk:
1. Tidak menyalahgunakan layanan kami.
2. Mematuhi semua hukum yang berlaku.
3. Tidak melakukan tindakan yang merugikan pengguna lain.
4. Memahami bahwa data Anda akan digunakan sesuai kebijakan privasi kami.

Pastikan Anda membaca seluruh ketentuan sebelum melanjutkan.""",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: isAgreed,
                  onChanged: (value) {
                    setState(() {
                      isAgreed = value ?? false;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    isAgreed
                        ? "Saya setuju dengan Terms & Conditions"
                        : "Saya tidak setuju dengan Terms & Conditions",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),

            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
