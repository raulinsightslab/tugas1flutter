import 'dart:math';

import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MY PROFILE',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: "Bitcount"
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 25, 240),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color:  Color.fromARGB(255, 1, 25, 240),
            borderRadius: BorderRadius.circular(1),
            border: Border.all(color: Colors.black, width: sqrt1_2),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nama : Raul Akbarullah",
                style: TextStyle(fontFamily: "Orbitron",fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.white),
                  SizedBox(width: 8),
                  Expanded(child : Text(
                    "Lokasi : Jakarta Pusat",
                    style: TextStyle(fontSize: 17, fontFamily: "Orbitron", color:Colors.white),
                  ),
                  ),
                ],
              ),
              Text(
                "Saya pelajar yang sedang  belajar flutter",
                style: TextStyle(fontSize: 20),
                overflow: TextOverflow.visible,
              ),
            ],
          ),
        ),
      ),
    );
  }
}