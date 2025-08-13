import 'package:flutter/material.dart';
import 'package:tugas1flutter/Tugas_9/models/produkmodel.dart';

class ModelPage extends StatefulWidget {
  const ModelPage({super.key});

  @override
  State<ModelPage> createState() => _ModelPage();
}

class _ModelPage extends State<ModelPage> {
  final List<ProdukModel> produkModel = [
    ProdukModel(
      nama: "Laptop Bekas",
      price: "5.000.000",
      icon: Icons.laptop,
      image: ("assets/images/Laptop.jpg"),
    ),
    ProdukModel(
      nama: "HP Bekas",
      price: "2.000.000",
      icon: Icons.phone_android,
      image: ("assets/images/hp.jpg"),
    ),
    ProdukModel(
      nama: "Kamera Bekas",
      price: "3.500.000",
      icon: Icons.camera,
      image: ("assets/images/Kamera.jpg"),
    ),
    ProdukModel(
      nama: "Sepeda Bekas",
      price: "1.000.000",
      icon: Icons.pedal_bike,
      image: ("assets/images/sepeda.jpg"),
    ),
    ProdukModel(
      nama: "Motor Bekas",
      price: "8.000.000",
      icon: Icons.motorcycle,
      image: ("assets/images/motor.jpg"),
    ),
    ProdukModel(
      nama: "Mobil Bekas",
      price: "120.000.000",
      icon: Icons.directions_car,
      image: ("assets/images/Laptop.jpg"),
    ),
    ProdukModel(
      nama: "Meja Bekas",
      price: "500.000",
      icon: Icons.table_chart,
      image: ("assets/images/meja.jpg"),
    ),
    ProdukModel(
      nama: "Kursi Bekas",
      price: "300.000",
      icon: Icons.event_seat,
      image: ("assets/images/kursi.jpg"),
    ),
    ProdukModel(
      nama: "Buku Bekas",
      price: "20.000",
      icon: Icons.book,
      image: ("assets/images/buku.jpg"),
    ),
    ProdukModel(
      nama: "Pakaian Bekas",
      price: "50.000",
      icon: Icons.checkroom,
      image: ("assets/images/baju.jpg"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: produkModel.length,
            itemBuilder: (BuildContext context, int index) {
              final dataProdukModel = produkModel[index];
              return ListTile(
                title: Text(dataProdukModel.nama),
                subtitle: Text(dataProdukModel.price.toString()),
                trailing: Icon(dataProdukModel.icon),
                leading: Image.asset(
                  dataProdukModel.image,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
