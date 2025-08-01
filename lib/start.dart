import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text ('MY PROFILE', style: TextStyle( fontSize: 30, color: Colors.white, fontFamily: "Bitcount"),),
         backgroundColor: const Color.fromARGB(255, 1, 25, 240),
         centerTitle: true,
      ),
      body: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Nama : Raul Akbarullah", style: TextStyle(fontSize: 20, color: Colors.black),),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [Icon(Icons.location_on),
            Text("Lokasi : Jakarta Pusat", style: TextStyle(fontSize: 20),),
            ] 
          ),
          Text ("Saya pelajar yang sedang  belajar flutter", style: TextStyle(fontSize: 20, ),),
          ]
      )
    );
  }
 
}