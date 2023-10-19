import 'package:flutter/material.dart';
import 'package:meditransparency/data/constants/styles.dart';
import 'package:meditransparency/utils/screens/auth_screens/sign_up_screen.dart';
import 'package:meditransparency/utils/widgets/button.dart';
import 'package:meditransparency/data/constants/colors.dart';

import '../../widgets/reusable_text.dart';
import 'package:flutter_svg/svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _phoneController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              text("Sign In", Colors.black, 35.0, FontWeight.w500,
                  ),
                  SizedBox(height: 25,),
              text(
                  "Sign in using your phone number or by a given social login",
                  Colors.black38,
                  15,
                  FontWeight.w500,
                  align: TextAlign.center),
                  SizedBox(height: 30,),
              Row(
                children: [
                  text("Phone Number", Colors.black38, 15, FontWeight.w500,
                      ),
                ],
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller:_phoneController,
                  style: TextStyle(
                    color: ui.blackclr,
                    fontSize: 20,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w300,
                  ),
                          decoration: InputDecoration(
                border: OutlineInputBorder(),
                
                // hintText: 'Enter a search term',
                          ),
                        ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  text("Password", Colors.black38, 15, FontWeight.w500,
                      ),
                ],
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  cursorColor: Colors.black,
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: _passwordController,
                  style: TextStyle(
                    color: ui.blackclr,
                    fontSize: 30,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w300,
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.visibility_off))),
                ),
              ),
              SizedBox(height: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  text("Forget Password ?", ui.primarylightclr, 15,
                      FontWeight.w500,)
                ],
              ),
              SizedBox(height: 30,),
              nextorcontinuebtn(
                          context:context,
                          tex: 'Next',
                          style: fontstyles().style,
                          function: (){
                            if (RegExp(r'^[0-9]{10}$').hasMatch(_phoneController.text) &&
                              _passwordController.text.length >= 6) {
                            // Process data
                            print('Phone Number: ${_phoneController.text}');
                            print('Password: ${_passwordController.text}');
                          }
                          }
                        ),
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Row(children: <Widget>[
                  Expanded(
                      child: Divider(
                        color: ui.greyclr,                    
                    thickness: 1.5,
                  )),
                  Text(
                    " Or sign up with ",
                    style: TextStyle(color: Colors.black38),
                  ),
                  Expanded(
                      child: Divider(
                        color: ui.greyclr,
                    thickness: 1.5,
                  )),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
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
                padding: const EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text("Don’t have an account? ", Colors.black, 12,
                        FontWeight.w500,),
                    InkWell(
                      child: text(" Sign Up", ui.primarylightclr, 12,
                          FontWeight.w500, ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
