import "dart:math";
import "package:flutter/material.dart";

Random random = new Random();
List<MaterialColor> colors = [
  Colors.red,
  Colors.blue,
  Colors.teal,
  Colors.purple,
  Colors.brown,
  Colors.blueGrey
];

class EmailModel {
  String from, title, time, body;
  bool favourite;
  MaterialColor color;
  EmailModel({this.from, this.title, this.time, this.body}) {
    this.color = colors[random.nextInt(colors.length)];
    this.favourite = false;
  }
}
