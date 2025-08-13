import 'package:flutter/material.dart';

class ListMap extends StatefulWidget {
  const ListMap({super.key});

  @override
  State<ListMap> createState() => _ListMap();
}

class _ListMap extends State<ListMap> {
  final List<Map<String, dynamic>> barang = [
    {"nama": "Laptop Bekas", "price": "Rp.5.000.000", "icon": Icons.laptop},
    {"nama": "HP Bekas", "price": "Rp.600.000", "icon": Icons.phone_android},
    {"nama": "Kamera Bekas", "price": "Rp.7.000.000", "icon": Icons.camera_alt},
    {"nama": "Motor", "price": "Rp.8.000.000", "icon": Icons.motorcycle},
    {"nama": "Mobil", "price": "Rp.10.000.000", "icon": Icons.directions_car},
    {"nama": "Sepeda", "price": " Rp.300.000", "icon": Icons.pedal_bike},
    {"nama": "Meja Bekas", "price": "Rp.40.000", "icon": Icons.table_chart},
    {"nama": "Kursi Bekas", "price": "Rp.35.000", "icon": Icons.event_seat},
    {"nama": "Buku Bekas", "price": "Rp.15.000", "icon": Icons.book},
    {"nama": "TV Bekas", "price": "Rp.900.000", "icon": Icons.tv},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: barang.length,
            itemBuilder: (BuildContext context, int index) {
              final produkbarang = barang[index];
              return ListTile(
                title: Text(produkbarang["nama"]),
                subtitle: Text(produkbarang["price"].toString()),
                trailing: Icon(produkbarang["icon"]),
                leading: CircleAvatar(child: Text("${index + 1}")),
              );
            },
          ),
        ],
      ),
    );
  }
}
