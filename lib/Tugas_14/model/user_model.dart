// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  int id;
  String firstName;
  String lastName;
  String fullName;
  String title;
  String family;
  String image;
  String imageUrl;

  Welcome({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.title,
    required this.family,
    required this.image,
    required this.imageUrl,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    id: json["id"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    fullName: json["fullName"],
    title: json["title"],
    family: json["family"],
    image: json["image"],
    imageUrl: json["imageUrl"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstName": firstName,
    "lastName": lastName,
    "fullName": fullName,
    "title": title,
    "family": family,
    "image": image,
    "imageUrl": imageUrl,
  };
}
