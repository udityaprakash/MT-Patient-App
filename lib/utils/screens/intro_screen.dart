import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditransparency/utils/screens/auth_screens/sign_in_screen.dart';

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
      "titletext": "Find the best doctors\n near you!",
      "description":
          "With the help of our intelligent algorithms,\n now locate the best doctors around your\n vicinity at total ease ",
      "image": "0.svg"
    },
    {
      "titletext": "Schedule appointments\n with expert doctors",
      "description":
          "Find experienced specialist doctors with a\n good ratings and reviews and book you\n appointments hassle free.",
      "image": "1.svg"
    },
    {
      "titletext": "Find Help from our AI\n Assistant!",
      "description":
          "An AI assistant integrated into our app\n revolutionizes the patient experience by\n providing real-time support.",
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
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.lightBlueAccent,
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: index == 0
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        if (index > 0)
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 40),
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back),
                              iconSize: 24,
                              onPressed: () {
                                updatedecrementindex();
                              },
                            ),
                          ),
                        if (index < 2)
                          Padding(
                            padding: const EdgeInsets.only(top: 40, right: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                width: 50,
                                height: 35,
                                child: Center(
                                  child: text("SKIP", Colors.lightBlueAccent,
                                      12.0, FontWeight.w500, FontStyle.normal),
                                )),
                          ),
                      ]),
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    child: SvgPicture.asset(
                        "assets/images/${data[index]['image']}"),
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    text(
                      data[index]['titletext']!,
                      Colors.black,
                      30,
                      FontWeight.w500,
                      FontStyle.normal,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    text(
                      data[index]['description']!,
                      Colors.black26,
                      15,
                      FontWeight.w500,
                      FontStyle.normal,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        if (index == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInScreen()));
                        } else {
                          updateincrementindex();
                        }
                      },
                      child: Container(
                        width: 265,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightBlueAccent,
                        ),
                        child: Center(
                          child: text(
                            "NEXT",
                            Colors.white,
                            25,
                            FontWeight.w500,
                            FontStyle.normal,
                          ),
                        ),
                      ),
                    )
                  ]),
            )
          ],
        ));
  }
}
