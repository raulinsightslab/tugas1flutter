import 'package:flutter/material.dart';
import 'package:tugas1flutter/Tugas_10/textform.dart';
import 'package:tugas1flutter/Tugas_11/model/pesertaseminar.dart';
import 'package:tugas1flutter/Tugas_11/sqflite/db.dart';

class SeminarFormScreen extends StatefulWidget {
  const SeminarFormScreen({super.key});

  @override
  State<SeminarFormScreen> createState() => _SeminarFormScreenState();
}

class _SeminarFormScreenState extends State<SeminarFormScreen> {
  List<SeminarForm> seminars = [];

  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController seminarController = TextEditingController();
  final TextEditingController kotaController = TextEditingController();

  @override
  void initState() {
    super.initState();
    ();
  }

  Future<void> getSeminars() async {
    final dataSeminar = await DbHelper.getAllSeminars();
    setState(() {
      seminars = dataSeminar.map((e) => SeminarForm.fromMap(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Seminar")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormConst(hintText: "Nama Peserta", controller: namaController),
            TextFormConst(hintText: "Email", controller: emailController),
            TextFormConst(
              hintText: "Seminar yang diikuti",
              controller: seminarController,
            ),
            TextFormConst(hintText: "Asal Kota", controller: kotaController),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final nama = namaController.text.trim();
                final email = emailController.text.trim();
                final seminar = seminarController.text.trim();
                final kota = kotaController.text.trim();
                if (nama.isEmpty ||
                    email.isEmpty ||
                    seminar.isEmpty ||
                    kota.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Semua Data Harus Diisi")),
                  );
                  return;
                }
                await DbHelper.insertSeminar(
                  namaPeserta: nama,
                  email: email,
                  seminar: seminar,
                  kota: kota,
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Data seminar berhasil disimpan"),
                  ),
                );
                namaController.clear();
                emailController.clear();
                seminarController.clear();
                kotaController.clear();
                getSeminars();
              },

              child: Text(
                "Daftar Seminar",
                style: TextStyle(color: Colors.white54),
              ),
              // child: Center(
              //   child: TextButton(
              //     onPressed: () {
              //       context.pushNamed(SeminarList.id);
              //     },
              //     child: Text(
              //       "Daftar Seminar",
              //       style: TextStyle(color: Colors.white54),
              //     ),
              //   ),
              // ),
            ),
            SizedBox(height: 20),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: seminars.length,
              itemBuilder: (BuildContext context, int index) {
                final dataSeminar = seminars[index];
                return ListTile(
                  title: Text(dataSeminar.namaPeserta),
                  subtitle: Text(
                    "${dataSeminar.seminar} - ${dataSeminar.kota}",
                  ),
                  trailing: Text(dataSeminar.email),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
