import 'package:flutter/material.dart';
import 'package:tugas1flutter/Tugas_10/inputform.dart';
import 'package:tugas1flutter/Tugas_7/Dashboard.dart';
import 'package:tugas1flutter/Tugas_7/checkbox.dart';
import 'package:tugas1flutter/Tugas_7/date.dart';
import 'package:tugas1flutter/Tugas_7/dropdown.dart';
import 'package:tugas1flutter/Tugas_7/switch.dart';
import 'package:tugas1flutter/Tugas_7/time.dart';
import 'package:tugas1flutter/Tugas_9/list.dart';
import 'package:tugas1flutter/Tugas_9/listmap.dart';
import 'package:tugas1flutter/Tugas_9/model.dart';
import 'package:tugas1flutter/extension/navigation.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int currentIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    DashboardPage(),
    CheckboxPage(),
    SwitchPage(appBar: false),
    Dropdown1(),
    DatePickerPage(),
    TimePickerPage(),
    ListPage(),
    ListMap(),
    ModelPage(),
    InputformPage(),
  ];

  void onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
    context.pop();
  }

  static const List<String> _titles = [
    "Dashboard",
    "Terms & Condition",
    "Dark Mode",
    "Catalogue",
    "Date of birth",
    "Time Picker",
    "List",
    "List Map",
    "Model Produk",
    "Form",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0F24),
        title: Text(
          _titles[currentIndex],
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Orbitron",
          ),
        ),
      ),
      body: Center(child: _widgetOptions[currentIndex]),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 31, 39, 78),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.dashboard, color: Colors.white),
              title: Text("Dashboard", style: TextStyle(color: Colors.white)),
              onTap: () {
                onItemTap(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.rule, color: Colors.white),
              title: Text(
                "Terms and Conditions",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                onItemTap(1);
              },
            ),

            ListTile(
              leading: Icon(Icons.dark_mode, color: Colors.white),
              title: Text("Dark Mode", style: TextStyle(color: Colors.white)),
              onTap: () {
                onItemTap(2);
              },
            ),

            ListTile(
              leading: Icon(Icons.category, color: Colors.white),
              title: Text("Catalogue", style: TextStyle(color: Colors.white)),
              onTap: () {
                onItemTap(3);
              },
            ),

            ListTile(
              leading: Icon(Icons.date_range, color: Colors.white),
              title: Text(
                "Date of Birth",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                onItemTap(4);
              },
            ),

            ListTile(
              leading: Icon(Icons.timer, color: Colors.white),
              title: Text("Time Picker", style: TextStyle(color: Colors.white)),
              onTap: () {
                onItemTap(5);
              },
            ),

            ListTile(
              leading: Icon(Icons.list, color: Colors.white),
              title: Text("List", style: TextStyle(color: Colors.white)),
              onTap: () {
                onItemTap(6);
              },
            ),

            ListTile(
              leading: Icon(Icons.map, color: Colors.white),
              title: Text("List Map", style: TextStyle(color: Colors.white)),
              onTap: () {
                onItemTap(7);
              },
            ),

            ListTile(
              leading: Icon(Icons.model_training_outlined, color: Colors.white),
              title: Text("Model", style: TextStyle(color: Colors.white)),
              onTap: () {
                onItemTap(8);
              },
            ),
            ListTile(
              leading: Icon(Icons.model_training_outlined, color: Colors.white),
              title: Text(
                "Form Pendaftaran",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                onItemTap(9);
              },
            ),

            // ListTile(
            //   leading: Icon(Icons.lock_clock_outlined),
            //   title: Text("Set Reminders"),
            //   onTap: () {
            //     onItemTap(5);
            //   },
            // ),

            // ListTile(
            //   leading: Icon(Icons.logout),
            //   title: Text("Logout"),
            //   onTap: () {
            //     Navigator.pushNamedAndRemoveUntil(
            //       context,
            //       '/login',
            //       (route) => false,
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
