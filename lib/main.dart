import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/contact.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/language.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/myaccount.dart';
import 'package:flutter_application_1/pages/policy.dart';
import 'package:flutter_application_1/pages/share.dart';
import 'package:flutter_application_1/uti/routes.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),

      // home: HomePage(),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.myaccountRoute: (context) => MyAccount(),
        MyRoutes.languageRoute: (context) => Language(),
        MyRoutes.contactRoute: (context) => ContactUs(),
        MyRoutes.policyRoute: (context) => Policy(),
        MyRoutes.shareRoute: (context) => Share(),
      },
    );
  }
}
