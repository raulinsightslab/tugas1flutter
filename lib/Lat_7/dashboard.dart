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
            Positioned(
              top: 30,
              left: 20,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/poto_1.jpg'),
              ),
            ),

            // ✅ Info di kanan
            Positioned(
              top: 30,
              left: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Raul Akbarullah",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Orbitron",
                    ),
                  ),
                  Text(
                    "Flutter Learner",
                    style: TextStyle(fontFamily: "Orbitron"),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(Icons.email, color: Colors.blueAccent, size: 18),
                      SizedBox(width: 6),
                      Text(
                        "raulakbar1905@gmail.com",
                        style: TextStyle(fontFamily: "Orbitron"),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.phone, color: Colors.blueAccent, size: 18),
                      SizedBox(width: 6),
                      Text(
                        "+62 812-3456-7890",
                        style: TextStyle(fontFamily: "Orbitron"),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blueAccent,
                        size: 18,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "Jakarta, Indonesia",
                        style: TextStyle(fontFamily: "Orbitron"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
