import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF111B21),
      /*body: Center(
        child: Text('Fuckingly Welcome'),
      ),*/
      body: Column(
        children: [
          // Uncomment the following Expanded widget to display an image
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Image.asset(
              "assets/images/circle.png",
              color: Colors.green,
            ),
          )),
          const SizedBox(
            height: 43,
          ),
          Expanded(
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Welcome to WhatsApp',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          text: 'Read our',
                          style: TextStyle(
                            color: Color.fromARGB(255, 122, 143, 156),
                            height: 1.6,
                          ),
                          children: [
                            TextSpan(
                                text: ' Privacy Policy.',
                                style: TextStyle(
                                  color: Color(0xFF53BDEb),
                                )),
                            TextSpan(
                              text: ' Tap " Agree and continue" to accept our',
                            ),
                            TextSpan(
                                text: ' Terms of Services',
                                style: TextStyle(
                                  color: Color(0xFF53BDEb),
                                )),
                          ])),
                ),
                SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width - 100,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF00A884),
                          foregroundColor: const Color(0xFF111B21),
                          splashFactory: NoSplash.splashFactory,
                          elevation: 2,
                          shadowColor: Colors.greenAccent,
                        ),
                        child: const Text("AGREE AND CONTINUE")))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
