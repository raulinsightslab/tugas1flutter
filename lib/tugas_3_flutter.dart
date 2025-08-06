import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tugas3Flutter extends StatelessWidget {
  const Tugas3Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Form & Gallery",
          style: GoogleFonts.orbitron(fontSize: 40, color: Colors.white),
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

          //Buat Judul       
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20),
                  child: Text(
                    "Pengisian Formulir Anggota",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "Orbitron",
                    ),
                  ),
                ),
              ],
            ),
             Column(
              
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "HIMATASKA",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "Orbitron",
                    ),
                  ),
                ),
              ],
            ),
        

          //Nomor 1
          //buat nama
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromARGB(255, 28, 42, 163),
                  width: 2,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Nama",
                  hintText: "Masukkan Nama Lengkap",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),

          //buat email
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromARGB(255, 28, 42, 163),
                  width: 2,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Masukkan Email Aktif",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),

          //buat no hp
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),

            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromARGB(255, 28, 42, 163),
                  width: 2,
                ),
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "No Handphone",
                  hintText: "Masukkan No. Handphone Aktif",
                  prefixIcon: Icon(Icons.phone_rounded),
                ),
              ),
            ),
          ),

          // buat deskripsi
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromARGB(255, 28, 42, 163),
                  width: 2,
                ),
              ),
              child: TextField(
                keyboardType: TextInputType.multiline,
                minLines: 4,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Deskripsi",
                  hintText: "Ceritakan Tentang Diri Anda",
                  prefixIcon: Icon(Icons.description),
                  alignLabelWithHint: true,
                ),
              ),
            ),
          ),

          Center(
            child: Text(
              "Kategori Galery",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: "Orbitron",
              ),
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
              //stack 1
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.red, Colors.orange],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Kegiatan",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Orbitron",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //stack 2
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
                    child: Center(
                      child: Text(
                        "Prestasi",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Orbitron",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //stack 3
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
                    child: Center(
                      child: Text(
                        "Event",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Orbitron",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //stack 4
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
                    child: Center(
                      child: Text(
                        "Dokumentasi",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Orbitron",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //stack 5
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
                    child: Center(
                      child: Text(
                        "Pengurus",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Orbitron",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //stack 6
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
                    child: Center(
                      child: Text(
                        "Anggota",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Orbitron",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
