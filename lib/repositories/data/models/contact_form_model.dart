// To parse this JSON data, do
//
//     final contactFormModel = contactFormModelFromJson(jsonString);

import 'dart:convert';

class ContactFormModel {
  final String name;
  final String email;
  final dynamic subject;
  final String text;

  ContactFormModel({
    required this.name,
    required this.email,
    required this.subject,
    required this.text,
  });

  factory ContactFormModel.fromRawJson(String str) =>
      ContactFormModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContactFormModel.fromJson(Map<String, dynamic> json) =>
      ContactFormModel(
        name: json["name"],
        email: json["email"],
        subject: json["subject"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "subject": subject,
        "text": text,
      };
}
