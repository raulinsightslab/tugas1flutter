import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  static const id = "/dashboard";

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // int _selectedIndex = 0;
  // final List<Widget> _pages = [HomePage(), AboutPage()];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Dashboard",
      //     style: TextStyle(
      //       fontSize: 25,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.white,
      //       fontFamily: "Orbitron",
      //     ),
      //   ),
      //   backgroundColor: Color(0xFF0A0F24),
      // ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFF142850),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                """SharkNet 🦈
Platform pintar untuk mengelola informasi, memilih produk, dan mengatur pengingat dengan mudah.
🌊 Fitur:
1. Mode Gelap & Terang.
2. Kategori Produk sesuai kebutuhan.
3. Penyesuaian layanan lewat tanggal lahir.
4. Pengingat agar tidak terlewat.
Nikmati pengalaman praktis, aman, dan efisien di SharkNet!""",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Arimo",
                  height: 1.5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),

      backgroundColor: Colors.black,
    );
  }
}
