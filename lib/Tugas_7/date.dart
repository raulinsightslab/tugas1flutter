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
          const Text("Pilih Tanggal Lahir Anda:"),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              child: const Text("Pilih Tanggal"),
              onPressed: () async {
                final DateTime? tanggal = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                );

                if (tanggal != null) {
                  setState(() {
                    pilihtanggal = tanggal;
                  });
                }
              },
            ),
          ),
          const SizedBox(height: 20),
          Text(
            pilihtanggal == null
                ? "Belum ada tanggal dipilih"
                : "Tanggal Lahir Anda:${DateFormat("EEEE, dd MMMM yyyy", "id_ID").format(pilihtanggal!)}",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
