import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/reusable_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            text("Sign Up", Colors.black, 25.0, FontWeight.w500,
                FontStyle.normal),
            text(
                "Sign in using your phone number or by a given\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsocial login",
                Colors.black38,
                15,
                FontWeight.w500,
                FontStyle.normal),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 25),
              child: Row(
                children: [
                  text("Phone number", Colors.black38, 15, FontWeight.w500,
                      FontStyle.normal),
                ],
              ),
            ),
            Container(
              width: 325,
              height: 47,
              child: TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 10),
              child: Row(
                children: [
                  text("Password", Colors.black38, 15, FontWeight.w500,
                      FontStyle.normal),
                ],
              ),
            ),
            Container(
              width: 325,
              height: 47,
              child: TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.visibility_off))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 10),
              child: Row(
                children: [
                  text("Confirm Password", Colors.black38, 15, FontWeight.w500,
                      FontStyle.normal),
                ],
              ),
            ),
            Container(
              width: 325,
              height: 47,
              child: TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.visibility_off))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 31.0, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  text("forget password", Colors.lightBlueAccent, 15,
                      FontWeight.w500, FontStyle.normal)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Container(
                width: 325,
                height: 47,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.lightBlueAccent,
                ),
                child: Center(
                    child: text("Next", Colors.white, 20, FontWeight.w700,
                        FontStyle.normal)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  height: 30,
                  indent: 32,
                )),
                Text(
                  "Or sign up with",
                  style: TextStyle(color: Colors.black38),
                ),
                Expanded(
                    child: Divider(
                  endIndent: 32,
                )),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/google.svg',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    'assets/images/facebook.svg',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text("Have an account? ", Colors.black, 12, FontWeight.w500,
                      FontStyle.normal),
                  InkWell(
                    child: text("Sign In", Colors.lightBlueAccent, 12,
                        FontWeight.w500, FontStyle.normal),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
