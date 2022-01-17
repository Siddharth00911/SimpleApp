import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
// ignore_for_file: prefer_const_constructors

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("lib/images/login1.png", fit: BoxFit.cover),
            SizedBox(height: 20.0),
            Text("WELCOME"),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(labelText: "Username:")),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: "Password:")),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text("Login"),
              style: TextButton.styleFrom(),
            ),
            //
          ],
        ));
  }
}
