import 'package:flutter/material.dart';
import 'package:tugas1flutter/Tugas_7/date.dart';
import 'package:tugas1flutter/Tugas_7/dropdown.dart';
import 'package:tugas1flutter/Tugas_7/switch.dart';
import 'package:tugas1flutter/Tugas_7/time.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  static const id = "/Dashboard";

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"), backgroundColor: Colors.black),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  "Menu Input",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.check_box),
              title: const Text("Syarat & Ketentuan"),
              onTap: () {
                Navigator.pushNamed(context, '/Check');
              },
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text("Mode Gelap"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, SwitchPage.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text("Pilih Kategori Produk"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, DropdownPage.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text("Pilih Tanggal Lahir"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, DatePickerPage.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.access_time),
              title: const Text("Atur Pengingat"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, TimePickerPage.id);
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Selamat datang di Dashboard\nPilih menu dari Drawer",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
