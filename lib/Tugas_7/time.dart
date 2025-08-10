import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePickerPage extends StatefulWidget {
  static const String id = '/timepicker';

  const TimePickerPage({super.key});

  @override
  State<TimePickerPage> createState() => _TimePickerPageState();
}

class _TimePickerPageState extends State<TimePickerPage> {
  TimeOfDay? selectedTime;

  Future<void> _pickTime() async {
    TimeOfDay now = TimeOfDay.now();
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? now,
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedTime = selectedTime != null
        ? selectedTime!.format(context)
        : '';

    return Scaffold(
      appBar: AppBar(title: const Text('Atur Pengingat')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _pickTime,
              child: const Text('Pilih Waktu Pengingat'),
            ),
            const SizedBox(height: 20),
            if (selectedTime != null)
              Text(
                'Pengingat diatur pukul: $formattedTime',
                style: const TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}
