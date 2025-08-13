import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPage();
}

class _ListPage extends State<ListPage> {
  final List<String> barangbekas = [
    "Laptop Bekas",
    "HP Bekas",
    "Kamera Bekas",
    "Sepeda Bekas",
    "Motor Bekas",
    "Mobil Bekas",
    "Meja Bekas",
    "Kursi Bekas",
    "Buku Bekas",
    "Pakaian Bekas",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: barangbekas.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(barangbekas[index]),
                leading: CircleAvatar(child: Text("${index + 1}")),
              );
            },
          ),
        ],
      ),
    );
  }
}
