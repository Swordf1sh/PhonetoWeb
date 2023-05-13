// To parse this JSON data, do
//
//     final contactFormModel = contactFormModelFromJson(jsonString);

import 'dart:convert';

ContactFormModel contactFormModelFromJson(String str) =>
    ContactFormModel.fromJson(json.decode(str));

String contactFormModelToJson(ContactFormModel data) =>
    json.encode(data.toJson());

class ContactFormModel {
  final int id;
  final String name;
  final String email;
  final dynamic subject;
  final String text;
  final DateTime created;

  ContactFormModel({
    required this.id,
    required this.name,
    required this.email,
    this.subject,
    required this.text,
    required this.created,
  });

  factory ContactFormModel.fromJson(Map<String, dynamic> json) =>
      ContactFormModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        subject: json["subject"],
        text: json["text"],
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "subject": subject,
        "text": text,
        "created": created.toIso8601String(),
      };
}
