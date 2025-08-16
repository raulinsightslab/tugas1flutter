import 'dart:convert';

class SeminarForm {
  final String namaPeserta;
  final String email;
  final String seminar;
  final String kota;

  SeminarForm({
    required this.namaPeserta,
    required this.email,
    required this.seminar,
    required this.kota,
  });

  Map<String, dynamic> toMap() {
    return {
      'nama_peserta': namaPeserta,
      'email': email,
      'seminar': seminar,
      'kota': kota,
    };
  }

  factory SeminarForm.fromMap(Map<String, dynamic> map) {
    return SeminarForm(
      namaPeserta: map['nama_peserta'],
      email: map['email'],
      seminar: map['seminar'],
      kota: map['kota'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SeminarForm.fromJson(String source) =>
      SeminarForm.fromMap(json.decode(source));
}
