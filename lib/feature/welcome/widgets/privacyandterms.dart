import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custon_theme_extension.dart';

class PrivacyAndTerms extends StatelessWidget {
  // const privacy_and_terms();
  const PrivacyAndTerms({
    Key? key,
  }) : super(key: key);
  something() {}
  Widget build(BuildContext context) {
    return Padding(
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
                const TextSpan(
                    text: ' Privacy Policy.',
                    style: TextStyle(
                      //color: context.theme.blueColor
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
    );
  }
}
