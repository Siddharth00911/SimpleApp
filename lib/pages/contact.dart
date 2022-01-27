import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Us")),
      body: Center(
        child: Text("Contactus"),
      ),
    );
  }
}
