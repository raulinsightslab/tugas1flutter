import 'package:flutter/material.dart';
import 'package:tugas1flutter/Tugas_10/outputform.dart';
import 'package:tugas1flutter/Tugas_10/textform.dart';
import 'package:tugas1flutter/extension/navigation.dart';

class InputformPage extends StatefulWidget {
  const InputformPage({super.key});

  @override
  State<InputformPage> createState() => _InputformPageState();
}

class _InputformPageState extends State<InputformPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController domController = TextEditingController();
  @override
  //  controller: emailController,
  // onChanged: (value) {
  //   setState(() {});
  // },
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color(0xFF0A0F24),
      //   title: const Text(
      //     "Form Pendaftaran",
      //     style: TextStyle(
      //       fontFamily: "Orbitron",
      //       fontWeight: FontWeight.bold,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 12,
            children: [
              TextFormConst(
                hintText: "Masukkan Nama",
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama wajib diisi';
                  }
                  return null;
                },
                onChanged: (p0) {
                  setState(() {});
                },
              ),
              TextFormConst(
                hintText: "Masukkan Email",
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email wajib diisi';
                  }
                  if (!value.contains("@")) {
                    return 'Email tidak valid';
                  }
                  return null; // valid
                },
                onChanged: (p0) {
                  setState(() {});
                },
              ),
              TextFormConst(
                hintText: "Masukkan No HandPhone",
                controller: phoneController,
                onChanged: (p0) {
                  setState(() {});
                },
              ),
              TextFormConst(
                hintText: "Masukkan Domisili",
                controller: domController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Domisili Wajib Diisi';
                  }
                  return null;
                },
                onChanged: (p0) {
                  setState(() {});
                },
              ),

              Text(
                nameController.text,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              Text(
                emailController.text,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              Text(
                phoneController.text,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              Text(
                domController.text,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.push(
                        Outputform(
                          name: nameController.text,
                          email: emailController.text,
                          phone: phoneController.text,
                          dom: domController.text,
                        ),
                      );
                    }
                  },
                  child: Text("Simpan"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
