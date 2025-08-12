import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  static const String id = '/switch';

  const SwitchPage({super.key, required bool appBar});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Mode Gelap')),
      body: Container(
        color: isDarkMode ? Colors.grey[900] : Colors.white,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SwitchListTile(
              title: const Text('Aktifkan Mode Gelap'),
              value: isDarkMode,
              onChanged: (bool value) {
                setState(() {
                  isDarkMode = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              isDarkMode ? 'Mode Gelap Aktif' : 'Mode Terang Aktif',
              style: TextStyle(
                fontSize: 18,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
