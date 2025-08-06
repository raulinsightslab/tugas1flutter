import 'package:flutter/material.dart';

class Tugas5Flutter extends StatefulWidget {
  const Tugas5Flutter({super.key});

  @override
  State<Tugas5Flutter> createState() => Tugas5FlutterState();
}

class Tugas5FlutterState extends State<Tugas5Flutter> {
  String nama = "Ciluk BAA!!!!!!!!!!!!!";
  String like = "";
  String info = "";
  bool disukai = false;
  int counter = 0;
  bool tampilKotakText = false;
  bool showName = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Interaktif')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. ElevatedButton
            ElevatedButton(              
              onPressed: () {
                setState(() {
                  nama = "Nama saya: Raul Akbarullah";                 
                });
                showName = !showName;
              },
              child: Text(showName ? "Sembunyikan" : "Tampilkan Nama" ),
            ),
            const SizedBox(height: 10),
            Text(showName ? nama : "", style: const TextStyle(fontSize: 16)),
            

            const Divider(height: 30),

            // 2. IconButton
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: disukai ? Colors.red : Colors.grey,

                  ),
                  onPressed: () {
                    setState(() {
                      disukai = !disukai;
                      like = disukai ? "Disukai" : "";
                    });
                  },
                ),
                Text(like),
              ],
            ),

            const Divider(height: 30),

            // 3. TextButton
            TextButton(
              onPressed: () {
                setState(() {
                  info =
                      "Ini adalah deskripsi tambahan yang muncul setelah tombol ditekan.";
                });
              },
              child: const Text("Lihat Selengkapnya"),
            ),
            Text(info),

            const Divider(height: 30),

            // 5. InkWell
            InkWell(
              onTap: () {
                debugPrint("Kotak disentuh");
                setState(() {
                  tampilKotakText = !tampilKotakText;
                });
              },
              child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueAccent,
                child: const Center(
                  child: Text(
                    "Kotak (Tap untuk toggle teks)",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            if (tampilKotakText)
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text("Teks Muncul karena Kotak ditekan"),
              ),

            const Divider(height: 30),

            // 6. GestureDetector
            GestureDetector(
              onTap: () => debugPrint("Ditekan sekali"),
              onDoubleTap: () => debugPrint("Ditekan dua kali"),
              onLongPress: () => debugPrint("Tahan lama"),
              child: Container(
                padding: const EdgeInsets.all(12),
                color: Colors.greenAccent,
                child: const Text("Tekan Aku"),
              ),
            ),
          ],
        ),
      ),

      // 4. FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text("Counter: $counter", style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}
