import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontFamily: "Orbitron",
          ),
        ),
        backgroundColor: Color(0xFF1A2238),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: 250,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            // Foto di kiri

            // Info di kanan
          ],
        ),
      ),
    );
  }
}
