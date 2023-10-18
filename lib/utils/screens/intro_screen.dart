import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditransparency/data/constants/styles.dart';
import 'package:meditransparency/utils/screens/auth_screens/sign_in_screen.dart';
import 'package:meditransparency/data/constants/colors.dart';
import 'package:meditransparency/utils/widgets/bottomdrawer.dart';
import 'package:meditransparency/utils/widgets/button.dart';
import '../widgets/reusable_text.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntoScreenState();
}

class _IntoScreenState extends State<IntroScreen> {
  int index = 0;

  var data = [
    {
      "titletext": "Find the best doctors near you!",
      "description":
          "With the help of our intelligent algorithms, now locate the best doctors around your\n vicinity at total ease ",
      "image": "0.svg"
    },
    {
      "titletext": "Schedule appointments with expert doctors",
      "description":
          "Find experienced specialist doctors with a good ratings and reviews and book you\n appointments hassle free.",
      "image": "1.svg"
    },
    {
      "titletext": "Find Help from our AI Assistant!",
      "description":
          "An AI assistant integrated into our app revolutionizes the patient experience by\n providing real-time support.",
      "image": "2.svg"
    },
  ];

  updateincrementindex() {
    if (index < 2) {
      setState(() {
        index++;
      });
    }
  }

  updatedecrementindex() {
    if (index > 0) {
      setState(() {
        index--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: ui.backgroundclr,
          body: Stack(children: [
            Container(
              color: ui.primaryclr,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: index == 0
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (index > 0)
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            iconSize: 26,
                            onPressed: () {
                              updatedecrementindex();
                            },
                          ),
                          SizedBox(height: 50,),
                        if (index < 2)
                          InkWell(
                            onTap: (){
                              Navigator.pushReplacementNamed(context, 'signinscreen');
                            },
                            child: Container(
                                margin: EdgeInsets.only(right:15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                width: 60,
                                height: 35,
                                child: Center(
                                  child: text(" SKIP ", ui.blackclr,
                                      12.0, FontWeight.w500, FontStyle.normal),
                                )),
                          ),
                      ]),
                  Container(
                    height: size.height / 3,
                    child:
                        SvgPicture.asset("assets/images/${data[index]['image']}"),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Expanded(child: Container()),
                bottomdrawer(
                  context: context,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        text(
                          data[index]['titletext']!,
                          ui.blackclr,
                          30,
                          FontWeight.w500,
                          FontStyle.normal,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        text(
                          data[index]['description']!,
                          ui.greyclr,
                          15,
                          FontWeight.w500,
                          FontStyle.normal,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        btn(
                          context:context,
                          tex: 'NEXT',
                          style: fontstyles().style,
                          function: (){
                            if (index == 2) {
                              Navigator.pushReplacementNamed(context, 'signinscreen');
                            } else {
                              updateincrementindex();
                              setState(() {
                                
                              });
                            }
                          }
                        )
                        // InkWell(
                        //   onTap: () {
                        //     if (index == 2) {
                        //       Navigator.pushReplacementNamed(context, 'signinscreen');
                        //     } else {
                        //       updateincrementindex();
                        //     }
                        //   },
                        //   child: Container(
                        //     width: 265,
                        //     height: 70,
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(20),
                        //       color: Colors.lightBlueAccent,
                        //     ),
                        //     child: Center(
                        //       child: text(
                        //         "NEXT",
                        //         Colors.white,
                        //         25,
                        //         FontWeight.w500,
                        //         FontStyle.normal,
                        //       ),
                        //     ),
                        //   ),
                        // )
                      ]),
                )
              ],
            )
          ])),
    );
  }
}
