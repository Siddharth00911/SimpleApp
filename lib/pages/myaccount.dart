import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Account")),
      body: Center(
        child: Text("Account"),
      ),
    );
  }
}
