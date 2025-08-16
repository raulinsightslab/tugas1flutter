import 'package:flutter/material.dart';

class ListPeserta {
  final String namaPeserta;
  final String email;
  final String seminar;
  final String kota;

  ListPeserta({
    required this.namaPeserta,
    required this.email,
    required this.seminar,
    required this.kota,
  });
}

class SeminarList extends StatelessWidget {
  final List<ListPeserta> seminars;
  static const id = "/list";

  const SeminarList({super.key, required this.seminars});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: seminars.length,
      itemBuilder: (BuildContext context, int index) {
        final dataSeminar = seminars[index];
        return ListTile(
          title: Text(dataSeminar.namaPeserta),
          subtitle: Text("${dataSeminar.seminar} - ${dataSeminar.kota}"),
          trailing: Text(dataSeminar.email),
        );
      },
    );
  }
}
