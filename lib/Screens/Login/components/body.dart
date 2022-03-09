import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_auth/Screens/home/home.dart';

class Body extends StatelessWidget {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/images/engineer.svg",
              height: size.height * 0.25,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                email = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password = value;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                // authenticating user credentials with firebase
                try {
                  FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MyHomePage();
                        },
                      ),
                    );
                  });
                } on FirebaseAuthException catch (e) {
                  AlertDialog(
                    title: Text('vccc'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e.message')));
                  print(e.message);
                }
              },
            ),
            SizedBox(height: size.height * 0.03),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/fingerprint.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/face-recognition.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
