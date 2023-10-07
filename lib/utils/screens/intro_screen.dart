import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          "With the help of our intelligent algorithms,\n now locate the best doctors around your\n vicinity at total ease "
    },
    {
      "titletext": "Schedule appointments\n with expert doctors",
      "description":
          "Find experienced specialist doctors with a\n good ratings and reviews and book you\n appointments hassle free."
    },
    {
      "titletext": "Find Help from our AI\n Assistant!",
      "description":
          "An AI assistant integrated into our app\n revolutionizes the patient experience by\n providing real-time support."
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
    if (index <= 2) {
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
                                child: const Center(
                                  child: Text("SKIP",
                                      style: TextStyle(
                                          color: Colors.lightBlueAccent,
                                          fontSize: 12,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w500)),
                                )),
                          ),
                      ])
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
                    Text(
                      data[index]['titletext']!,
                      style: const TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      data[index]['description']!,
                      style: const TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          color: Colors.black26),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        updateincrementindex();
                      },
                      child: Container(
                        width: 265,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightBlueAccent,
                        ),
                        child: const Center(
                          child: Text("NEXT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    )
                  ]),
            )
          ],
        ));
  }
}
