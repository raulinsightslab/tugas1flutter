import 'package:flutter/material.dart';
import 'package:tugas1flutter/Tugas_10/textform.dart';
import 'package:tugas1flutter/Tugas_11/model/pesertaseminar.dart';
import 'package:tugas1flutter/Tugas_11/sqflite/db.dart';

class SeminarFormScreen extends StatefulWidget {
  const SeminarFormScreen({super.key});
  static const id = "/formseminar";

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
    getSeminars(); // ambil data saat pertama kali masuk halaman
  }

  Future<void> getSeminars() async {
    final dataSeminar = await DbHelper.getAllSeminars();
    setState(() {
      seminars = dataSeminar.map((e) => SeminarForm.fromMap(e)).toList();
    });
  }

  void clearForm() {
    namaController.clear();
    emailController.clear();
    seminarController.clear();
    kotaController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Seminar")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // FORM INPUT
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

                clearForm();
                getSeminars();
              },
              child: const Text(
                "Daftar Seminar",
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 20),

            // LIST SEMINAR
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: seminars.length,
              itemBuilder: (BuildContext context, int index) {
                final dataSeminar = seminars[index];
                return ListTile(
                  title: Text(dataSeminar.namaPeserta),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${dataSeminar.seminar} - ${dataSeminar.kota}"),
                      Text(dataSeminar.email),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // EDIT BUTTON
                      IconButton(
                        onPressed: () {
                          namaController.text = dataSeminar.namaPeserta;
                          emailController.text = dataSeminar.email;
                          seminarController.text = dataSeminar.seminar;
                          kotaController.text = dataSeminar.kota;

                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Edit Data'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormConst(
                                    controller: namaController,
                                    hintText: 'Nama',
                                  ),
                                  const SizedBox(height: 12),
                                  TextFormConst(
                                    controller: emailController,
                                    hintText: 'Email',
                                  ),
                                  const SizedBox(height: 12),
                                  TextFormConst(
                                    controller: seminarController,
                                    hintText: 'Seminar',
                                  ),
                                  const SizedBox(height: 12),
                                  TextFormConst(
                                    controller: kotaController,
                                    hintText: 'Kota',
                                  ),
                                ],
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () async {
                                    final updatedData = SeminarForm(
                                      id: dataSeminar.id,
                                      namaPeserta: namaController.text.trim(),
                                      email: emailController.text.trim(),
                                      seminar: seminarController.text.trim(),
                                      kota: kotaController.text.trim(),
                                    );

                                    await DbHelper.updateSeminars(updatedData);
                                    Navigator.pop(context);
                                    getSeminars();
                                    clearForm();
                                  },
                                  child: const Text('Simpan'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    clearForm();
                                  },
                                  child: const Text('Batal'),
                                ),
                              ],
                            ),
                          );
                        },
                        icon: const Icon(Icons.edit),
                      ),

                      // DELETE BUTTON
                      IconButton(
                        onPressed: () async {
                          await DbHelper.deleteSeminar(dataSeminar.id as int);
                          getSeminars();
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
