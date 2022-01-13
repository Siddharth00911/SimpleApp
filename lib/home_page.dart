import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Center(child: Row()),
      drawer: Drawer(),
    );
  }
}
