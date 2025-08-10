import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tugas4Flutter extends StatelessWidget {
  const Tugas4Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Form & Product List",
          style: GoogleFonts.orbitron(fontSize: 30, color: Colors.white),
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Pengisian Form Pelanggan",
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
                  "MARINELYTICAL",
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
              "Daftar Product",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: "Orbitron",
              ),
            ),
          ),

          //Nomor 2
          ListTile(
            shape: Border.all(),
            leading: Icon(Icons.checkroom),
            title: Text("T-shirt"),
            subtitle: Text("Rp. 150.000"),
          ),
          ListTile(
            shape: Border.all(),
            leading: Icon(Icons.store),
            title: Text("Sweater"),
            subtitle: Text("Rp. 200.000"),
          ),
          ListTile(
            shape: Border.all(),
            leading: Icon(Icons.key),
            title: Text("Keychain"),
            subtitle: Text("Rp. 15.000"),
          ),
          ListTile(
            shape: Border.all(),
            leading: Icon(Icons.backpack_sharp),
            title: Text("Totebag"),
            subtitle: Text("Rp. 70.000"),
          ),
          ListTile(
            shape: Border.all(),
            leading: Icon(Icons.checkroom_rounded),
            title: Text("Hoodie"),
            subtitle: Text("Rp. 300.000"),
          ),
        ],
      ),
    );
  }
}
