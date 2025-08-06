import 'package:flutter/material.dart';

class Tugas5Flutter extends StatefulWidget {
  const Tugas5Flutter({super.key});

  @override
  State<Tugas5Flutter> createState() => _Tugas5FlutterState();
}

class _Tugas5FlutterState extends State<Tugas5Flutter> {
  String nama = "Nama saya Raul Akbarullah"; // Data nama
  bool showName = false; // Status untuk menampilkan teks atau tidak
  bool showLike = false;
  String deskripsi = "bla bla bla";
  bool showDesk = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Interaktif')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              // 1. ElevatedButton
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showName = !showName; // Toggle status
                  });
                },
                child: Text(showName ? "Sembunyikan" : "Tampilkan Nama"),
              ),
              const SizedBox(height: 10),
              // Tampilkan teks jika showName = true
              if (showName) Text(nama, style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),

              // 2. LikeButton
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        showLike = !showLike;
                      });
                    },
                    icon: Icon(Icons.favorite),
                    color: showLike ? Colors.red : Colors.grey,
                  ),

                  if (showLike) Text("disukai", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 20),
                ],
              ),

              //3. Text Button
              Column(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showDesk = !showDesk;
                      });
                    },
                    child: const Text("Lihat Selengkapnya"),
                  ),
                  if (showDesk)
                    Text("bla bla bla", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 20),
                ],
              ),

              //4.
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                          print(count);
                        },
                        child: Text("Tambah"),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(count.toString(), style: TextStyle(fontSize: 18)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
