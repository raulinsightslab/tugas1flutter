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
            fontFamily: "Bitcount", // Judul pakai Bitcount
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 25, 240),
        centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30),

          // Foto profile
          Center(
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/poto_1.jpg'),
            ),
          ),
          SizedBox(height: 40),

          // Baris 1
          Center(
            child: Text(
              "Raul Akbarullah",
              style: TextStyle(
                fontSize: 28,
                fontFamily: "Orbitron", // Nama pakai Orbitron
                fontStyle: FontStyle.normal,
              ),
            ),
          ),

          SizedBox(height: 20),

          // Baris 2
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 1, 25, 240),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: Row(
                children: [
                  Icon(Icons.email, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "raulakbar1905@gmail.com",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Orbitron",
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Baris 3
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 1, 25, 240),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: Row(
                children: [
                  Icon(Icons.phone, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "081385258648",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Orbitron",
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),

          // Baris 4
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        "Postingan",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Orbitron",
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.purpleAccent,
                    child: Center(
                      child: Text(
                        "Followers",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Orbitron",
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Baris 5
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Halo, saya Raul Akbarullah, mahasiswa Sistem Informasi Kelautan UPI dengan semangat menggabungkan teknologi dan kelautan. Saat ini saya mendalami Flutter untuk mengembangkan aplikasi inovatif yang membantu riset, analisis data, dan pengelolaan ekosistem laut.",
              style: TextStyle(fontSize: 13, fontFamily: "Orbitron"),
              textAlign: TextAlign.justify,
            ),
          ),

          Spacer(),

          // Baris 6
          Container(
            height: 50,
            color: Colors.blueAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.supervised_user_circle_outlined, size: 35),
                Icon(Icons.home, size: 35),
                Icon(Icons.add, size: 35),
                Icon(Icons.search, size: 35),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
