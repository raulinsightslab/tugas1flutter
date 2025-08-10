import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});
  static const id = "/Check";

  @override
  State<CheckboxPage> createState() => _CheckboxState();
}

class _CheckboxState extends State<CheckboxPage> {
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0F24),
        title: Text(
          "Terms & Conditions",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Orbitron",
          ),
        ),
      ),
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
                    "Saya telah membaca dan menyetujui Terms & Conditions",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isAgreed
                    ? () {
                        Navigator.pushNamed(context, '/nextPage');
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isAgreed ? Colors.blue : Colors.grey,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 14),
                ),
                child: Text("Lanjut", style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
