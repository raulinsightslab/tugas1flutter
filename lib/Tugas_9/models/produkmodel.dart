import 'dart:convert';

import 'package:flutter/material.dart';

class ProdukModel {
  final String nama;
  final String price;
  final IconData icon;
  final String image;
  ProdukModel({
    required this.nama,
    required this.price,
    required this.icon,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nama': nama,
      'price': price,
      'icon': icon,
      'image': image,
    };
  }

  factory ProdukModel.fromMap(Map<String, dynamic> map) {
    return ProdukModel(
      nama: map['nama'] as String,
      price: map['price'] as String,
      icon: map['icon'] as IconData,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdukModel.fromJson(String source) =>
      ProdukModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
