import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerPage extends StatefulWidget {
  static const String id = '/datepicker';
  const DatePickerPage({super.key});

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime? pilihtanggal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Pilih Tanggal Lahir Anda:"),
          SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              child: Text("Pilih Tanggal Lahir Anda"),
              onPressed: () async {
                final DateTime? tanggal = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1990),
                  lastDate: DateTime(2050),
                );
                if (tanggal != null) {
                  setState(() {});
                  pilihtanggal = tanggal;
                }
              },
            ),
          ),
          Text(
            pilihtanggal == null
                ? "Pilih tanggal dulu"
                : ("Tanggal Lahir Anda: ${DateFormat("dd MMMM yyyy", "id_ID").format(pilihtanggal!)}"),
          ),
        ],
      ),
    );
  }
}
