import 'package:flutter/material.dart';

class Tugas3Flutter extends StatelessWidget {
  const Tugas3Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Form & Gallery",
          style: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontFamily: "Orbitron",
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 28, 42, 163),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Center(
            child: CircleAvatar(
              radius: 90,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/poto_2.webp'),
            ),
          ),
          SizedBox(height: 40),
          
          //buat nyoba
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
           
           child: Container(
              
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 3),
                ),
              child:
              
              TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Masukkan Nama Anda",
            ),) ,
                
                
            ),
          ),

          //Nomor 1
          Row(children: [Text("Nama")]),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Masukkan Nama Anda",
            ),
          ),
          Row(children: [Text("Email")]),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Masukkan Email Anda",
            ),
          ),
          Row(children: [Text("No. HP")]),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Masukkan No. Hp Anda",
            ),
          ),
          Row(children: [Text("Deskripsi")]),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Masukkan Deskripsi diri",
            ),
          ),

          //Nomor 2
          GridView.count(
            shrinkWrap: true,
            padding: EdgeInsets.all(8.0),
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.red, Colors.orange],
                      ),
                    ),
                  ),
                  Center(child: Text("satu")),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF00c6ff), Color(0xFF0072ff)],
                      ),
                    ),
                  ),
                  Center(child: Text("dua")),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF6a11cb), Color(0xFF2575fc)],
                      ),
                    ),
                  ),
                  Center(child: Text("tiga")),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF56ab2f), Color(0xFFa8e063)],
                      ),
                    ),
                  ),
                  Center(child: Text("empat")),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFff758c), Color(0xFFff7eb3)],
                      ),
                    ),
                  ),
                  Center(child: Text("lima")),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF00f260), Color(0xFF0575E6)],
                      ),
                    ),
                  ),
                  Center(child: Text("enam")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
