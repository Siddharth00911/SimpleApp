import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/otp.dart';
// ignore_for_file: prefer_const_constructors

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String dialCodeDigits = "";
  // ignore: prefer_final_fields
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            Image.asset("lib/images/login1.png", fit: BoxFit.cover),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text("Please, Authenticate"),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              width: 400,
              height: 60,
              child: CountryCodePicker(
                onChanged: (country) {
                  setState(() {
                    dialCodeDigits = country.dialCode!;
                  });
                },
                initialSelection: "IN",
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
              ),
            ),
            //
            Container(
              margin: EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  prefix: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(dialCodeDigits),
                  ),
                ),
              ),
            ),
            //
            Container(
              margin: EdgeInsets.all(15),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (c) => OTPControllerPage(
                            phone: _controller.text,
                            codeDigits: dialCodeDigits,
                          )));
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),

            // continoue
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//         color: Colors.white,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Image.asset("lib/images/login1.png", fit: BoxFit.cover),
//               SizedBox(height: 20.0),
//               Text("WELCOME"),
//               SizedBox(height: 20.0),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   children: [
//                     TextFormField(
//                         decoration: InputDecoration(labelText: "Username:")),
//                     TextFormField(
//                         obscureText: true,
//                         decoration: InputDecoration(labelText: "Password:")),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20.0),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, MyRoutes.homeRoute);
//                 },
//                 child: Text("Login"),
//                 style: TextButton.styleFrom(),
//               ),
//               //
//             ],
//           ),
//         ));
//   }
// }
