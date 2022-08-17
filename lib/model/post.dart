import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class post {
  String id;
  Uri imguri;
  String tittle;
  String description;
  int interested;

  post(
      {required this.id,
      required this.tittle,
      required this.description,
      required this.imguri,
      required this.interested});
}
