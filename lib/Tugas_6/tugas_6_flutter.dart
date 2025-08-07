import 'package:flutter/material.dart';

class Tugas6Flutter extends StatefulWidget {
  const Tugas6Flutter({super.key});

  @override
  State<Tugas6Flutter> createState() => _Tugas6FlutterState();
}

class _Tugas6FlutterState extends State<Tugas6Flutter> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "PPKD",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontFamily: "Arimo",
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset('assets/images/Gambar_4.jpeg', fit: BoxFit.cover),
          ],
        ),
        backgroundColor: Color(0xFFD9D9D9),
        toolbarHeight: (200),
        centerTitle: true,
      ),

      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 16, 210, 5),
              child: Text(
                "Login Account",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontFamily: "Arimo",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 16, 9, 5),
              child: Text(
                "Hello, you must login first to be able to use the application and enjoy all the features in Calashop",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontFamily: "Arimo",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  spacing: 12,
                  children: [
                    Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            hint: Text("Masukkan Email"),
                            prefixIcon: Icon(Icons.email),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Email tidak boleh kosong";
                            }
                            if (!value.contains("@")) {
                              return "Email tidak valid";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        hint: Text("Masukkan Password"),
                        prefixIcon: Icon(Icons.password),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password tidak boleh kosong";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        hint: Text("Masukkan Confirm Password"),
                        prefixIcon: Icon(Icons.password),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Confirm Password tidak boleh kosong";
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //Error dan sukses menggunakan ScaffoldMessenger dan formKey
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Form Validasi Berhasil")),
                          );
                        }

                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Email anda tidak sesuai"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("Silakan Masukkan email yang valid"),
                                  SizedBox(height: 20),
                                  // Image.asset(
                                  //   'assets/images/rendang.jpeg',
                                  //   width: 90,
                                  //   height: 100,
                                  //   fit: BoxFit.cover,
                                  // ),
                                  // Lottie.asset(
                                  //   'assets/images/animations/success.json',
                                  //   width: 90,
                                  //   height: 100,
                                  //   fit: BoxFit.cover,
                                  // ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  child: Text("Batal"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  child: Text("Ok, Siap"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text("Submit"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
