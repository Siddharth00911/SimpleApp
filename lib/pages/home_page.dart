import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
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
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                // children: <Widget>[
                //   Column(),
                // ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Account'),
            // .tr(),
            subtitle: Text('Profile'),
            // .tr(),
            trailing: Icon(Icons.edit),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
              //Navigator.of(context).pushNamed(MyAccount.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Message'),
            // .tr(),
            //.tr(),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
              //Navigator.of(context).pushNamed(MyAccount.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.language_sharp),
            title: Text('Change Language'),
            // .tr(),
            //.tr(),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
              //Navigator.of(context).pushNamed(MyAccount.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_support),
            title: Text('Contact Us'),
            // .tr(),
            //.tr(),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.policy_outlined),
            title: Text('Legal Policy'),
            // .tr(),
            //.tr(),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            // .tr(),
            //.tr(),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      )),
    );
  }
}
