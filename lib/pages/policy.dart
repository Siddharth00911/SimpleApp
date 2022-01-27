import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class Policy extends StatelessWidget {
  const Policy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Policy")),
      body: Center(
        child: Text("policy"),
      ),
    );
  }
}
