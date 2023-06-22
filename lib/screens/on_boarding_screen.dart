import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'register_screens.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});
  static const String id = "on-board-page";

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  double scrollerPosition = 0;
  @override
  Widget build(BuildContext context) {
    // this will stop landscape mode
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Page View
            PageView(
              onPageChanged: (val) {
                setState(() {
                  scrollerPosition = val.toDouble();
                });
              },
              children: [
                OnBoardPage(
                  boardColumn: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Welcome \n To Teranga",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 32),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                          height: 300,
                          width: 300,
                          child: Image.asset("assets/icons/welcome.png")),
                    ],
                  ),
                ),
                OnBoardPage(
                  boardColumn: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Set up your delivery Location",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 32),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: 300,
                          width: 300,
                          child: Image.asset(
                            "assets/icons/image4.png",
                            cacheHeight: 1500,
                          )),
                    ],
                  ),
                ),
                OnBoardPage(
                  boardColumn: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Rescue Your favorite meals ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 32),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: 300,
                          width: 300,
                          child: Image.asset("assets/icons/catgories.png")),
                    ],
                  ),
                ),
                OnBoardPage(
                  boardColumn: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Enjoy delicious foods at discounted prices",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 32),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          height: 300,
                          width: 300,
                          child: Image.asset("assets/icons/image5.png")),
                    ],
                  ),
                ),
                OnBoardPage(
                  boardColumn: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Save the Earth",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 32),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: 300,
                          width: 300,
                          child: Image.asset("assets/icons/last.png")),
                    ],
                  ),
                ),
              ],
            ),

            // Dot indicator

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DotsIndicator(
                      dotsCount: 5,
                      position: scrollerPosition.toInt(),
                      decorator: const DotsDecorator(
                        activeColor: Colors.green,
                      ),
                    ),
                    scrollerPosition == 4
                        ? Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const RegisterScreen()));
                                },
                                child: const Text(
                                  "Start Saving Foods",
                                  style: TextStyle(color: Colors.white),
                                )),
                          )
                        : TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const RegisterScreen()));
                            },
                            child: const Text(
                              "SKIP TO THE APP >>>",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.green),
                            ),
                          ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({super.key, required this.boardColumn});

  final Column boardColumn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            color: Colors.green,
            child: Center(child: boardColumn),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(80),
                    topLeft: Radius.circular(80),
                  ),
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
