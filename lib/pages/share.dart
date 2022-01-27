import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class Share extends StatelessWidget {
  const Share({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Share with youre Friends")),
      body: Center(
        child: Text("Share"),
      ),
    );
  }
}
