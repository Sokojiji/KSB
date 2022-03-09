import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_auth/Screens/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
              "assets/images/manager.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
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
