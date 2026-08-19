import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue, Colors.green
            ])
          ),
          child: Center(
            child: Text("Hello Word"))),
      ),
    ),
  );
}
