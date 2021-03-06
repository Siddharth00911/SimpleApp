import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/uti/routes.dart';
// ignore_for_file: prefer_const_constructors

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      //
      body: SingleChildScrollView(child: Center(child: Row())),
      //
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Image.asset("lib/images/homepagedrawer1.png",
                  fit: BoxFit.cover)
              // child: Padding(
              //   padding: EdgeInsets.all(5),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     // children: <Widget>[
              //     //   Column(),
              //     // ],
              //   ),
              // ),
              ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Account'),
            // .tr(),
            // subtitle: Text('Profile'),
            // // .tr(),
            trailing: Icon(Icons.edit),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.myaccountRoute);
            },
          ),
          ListTile(
            leading: Icon(Icons.language_sharp),
            title: Text('Change Language'),
            // .tr(),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.languageRoute);
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_support),
            title: Text('Contact Us'),
            // .tr(),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.contactRoute);
            },
          ),
          ListTile(
            leading: Icon(Icons.policy_outlined),
            title: Text('Legal Policy'),
            // .tr(),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.policyRoute);
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            // .tr(),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.shareRoute);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sign Out'),
            // .tr(),
            // onTap: () {
            //   Navigator.pushNamed(context, MyRoutes.loginRoute);
            // },
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (c) => LoginPage()));
            },
          ),
        ],
      )),
    );
  }
}
