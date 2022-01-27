import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("language")),
      body: Center(
        child: Text("language"),
      ),
    );
  }
}
