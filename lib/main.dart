import "package:flutter/material.dart";
import "./screens/home/index.dart";

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: "Gmail Clone",
      home: Home(),
    );
  }
}
