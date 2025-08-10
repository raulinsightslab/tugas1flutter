import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  static const String id = '/dropdown';

  const DropdownPage({super.key});

  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  final List<String> categories = [
    'Elektronik',
    'Pakaian',
    'Makanan',
    'Lainnya',
  ];
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pilih Kategori Produk')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
              hint: const Text('Pilih kategori'),
              value: selectedCategory,
              items: categories
                  .map((cat) => DropdownMenuItem(value: cat, child: Text(cat)))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedCategory = value;
                });
              },
            ),
            const SizedBox(height: 20),
            if (selectedCategory != null)
              Text(
                'Anda memilih kategori: $selectedCategory',
                style: const TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}
