import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formkey = GlobalKey<FormState>();

  final namaController = TextEditingController();
  final emailController = TextEditingController();
  final nomorhpcontroller = TextEditingController();
  final domisilicontroller = TextEditingController();

  String? nama;
  String? email;
  String? nomorhp;
  String? domisili;
  @override
  void dispose() {
    namaController.dispose();
    emailController.dispose();
    nomorhpcontroller.dispose();
    domisilicontroller.dispose();
    super.dispose();
  }

  void _simpanData() {
    if (_formkey.currentState!.validate()) {
      setState(() {
        nama = namaController.text;
        email = emailController.text;
        nomorhp = nomorhpcontroller.text;
        domisili = domisilicontroller.text;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Input Biodata")),
      body: Padding(padding: EdgeInsets.all(16.0)),
    );
  }
}
