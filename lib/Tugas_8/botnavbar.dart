import 'package:flutter/material.dart';
import 'package:tugas1flutter/Tugas_10/inputform.dart';
import 'package:tugas1flutter/Tugas_7/drawer.dart';
import 'package:tugas1flutter/Tugas_8/about.dart';

class Botbar extends StatefulWidget {
  const Botbar({super.key});
  static const id = "/botbar";

  @override
  State<Botbar> createState() => _BotbarState();
}

class _BotbarState extends State<Botbar> {
  int selectedindex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    CustomDrawer(),
    AboutPage(),
    InputformPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[selectedindex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF0A0F24),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        selectedFontSize: 14,
        unselectedFontSize: 14,
        enableFeedback: true,
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        currentIndex: selectedindex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About Us"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: "Pendaftaran",
          ),
        ],
      ),
    );
  }
}
