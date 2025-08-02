import 'dart:math';

import 'package:flutter/material.dart';

class Tugas2Flutter extends StatelessWidget {
  const Tugas2Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MY PROFILE',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontFamily: "Bitcount",
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 25, 240),
        centerTitle: true,
      ),

      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (
                //Baris 1
                Center(
                  child: Text(
                    "Raul Akbarullah",
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: "Orbitron",
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                )),

                //Baris 2
                Container(
                  width: 400,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 1, 25, 240),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.email, color: Colors.white),
                      SizedBox(width: 10),
                      Spacer(),
                      Text(
                        "raulakbar1905@gmail.com",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Orbitron",
                          color: Colors.white,
                        ),
                      ),
                    ], //children-icon
                  ),
                ),

                //Baris 3
                Container(
                  width: 400,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 1, 25, 240),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.phone, color: Colors.white),
                      SizedBox(width: 10),
                      Spacer(),
                      Text(
                        "081385258648",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Orbitron",
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                    ], //children-icon
                  ),
                ),
                // //Baris 4
                // Expanded(
                //   child: Row(
                //     children: [
                //         Container(
                //   width: 400,
                //   padding: EdgeInsets.all(20),
                //   decoration: BoxDecoration(
                //     color: Color.fromARGB(255, 1, 25, 240),
                //     borderRadius: BorderRadius.circular(10),
                //     border: Border.all(color: Colors.black, width: 3),
                //   ),
                //   child: Row(
                //     children: [
                //       Icon(Icons.phone, color: Colors.white),
                //       SizedBox(width: 10),
                //       Spacer(),
                //       Text(
                //         "081385258648",
                //         style: TextStyle(
                //           fontSize: 15,
                //           fontFamily: "Orbitron",
                //           color: Colors.white,
                //         ),
                //       ),
                //       Spacer(),
                //     ], //children-icon
                //   ),
                // ),
                //     ],
                //   ),
                // ),
              ], //children-column
            ),
          ),
        ],
      ),
    );
  }
}
