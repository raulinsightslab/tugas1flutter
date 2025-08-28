import 'package:flutter/material.dart';
import 'package:tugas1flutter/Tugas_14/model/user_model.dart';

class DetailPage extends StatelessWidget {
  final Welcome welcome;
  const DetailPage({super.key, required this.welcome});
  static const id = "/page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Character Detail",
          style: TextStyle(fontFamily: "Orbitron"),
        ),
        centerTitle: true,
        // actions: [
        //   Image.asset("name")
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              // child: PhysicalModel(
              //   color: Colors.transparent,
              //   child: ClipRRect(borderRadius: BorderRadiusGeometry.circular(10),
              //   child: Image.network(welcome.image ?? ""),
              //   ),
              // ),
              child: Image.network(
                welcome.imageUrl ?? "",
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          welcome.title ?? "",
                          style: TextStyle(
                            fontFamily: "Orbitron",
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Full Name :",
                            style: TextStyle(fontFamily: "Orbitron"),
                          ),
                          SizedBox(width: 2),
                          Text(
                            welcome.fullName ?? "",
                            style: TextStyle(fontFamily: "Orbitron"),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "First Name :",
                            style: TextStyle(fontFamily: "Orbitron"),
                          ),
                          SizedBox(width: 2),
                          Text(
                            welcome.firstName ?? "",
                            style: TextStyle(fontFamily: "Orbitron"),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Last Name :",
                            style: TextStyle(fontFamily: "Orbitron"),
                          ),
                          SizedBox(width: 2),
                          Text(
                            welcome.lastName ?? "",
                            style: TextStyle(fontFamily: "Orbitron"),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Family :",
                            style: TextStyle(fontFamily: "Orbitron"),
                          ),
                          SizedBox(width: 2),
                          Text(
                            welcome.family ?? "",
                            style: TextStyle(fontFamily: "Orbitron"),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                '"When You Play Game Of Thrones,\n You Win Or You Die"',
                style: TextStyle(fontFamily: "Orbitron"),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Back", style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
