import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/colours.dart';
//import 'package:whatsapp/common/extension/custom_theme_extension.dart'; // Correct import
import 'package:whatsapp/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp/common/route/routes.dart'; // Correct import
import 'package:whatsapp/feature/auth/login_page.dart';
import 'package:whatsapp/feature/welcome/widgets/PrivacyAndTerms.dart'; // Correct import
//import 'dart:js';

import 'package:whatsapp/common/utils/colours.dart';
import '../../../common/extension/custon_theme_extension.dart';
import 'package:whatsapp/common/widgets/custom_elevated_button.dart';
//import 'lib/common/route/routes.dart';
import 'package:whatsapp/feature/welcome/widgets/PrivacyAndTerms.dart'; // Correct import

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  navigateToLoginPage(context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(Routes.login, (route) => false);
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 4,
                width: 35,
                decoration: BoxDecoration(
                  color: context.theme.greyColor!.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    splashColor: Colors.transparent,
                    splashRadius: 22,
                    iconSize: 22,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(minWidth: 40),
                    icon: const Icon(
                      Icons.close_outlined,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    " App Language ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Divider(
                color: context.theme.greyColor!.withOpacity(0.2),
                thickness: 3,
              ),
              RadioListTile(
                value: true,
                groupValue: true,
                onChanged: (value) {},
                activeColor: Colours.greeDark,
                subtitle: Text(
                  "(Phone's Language)",
                  style: TextStyle(color: context.theme.greyColor),
                ),
              ),
              RadioListTile(
                value: false,
                groupValue: true,
                onChanged: (value) {},
                activeColor: Colours.greeDark,
                title: const Text(" मराठी "),
                subtitle: Text(
                  " India ",
                  style: TextStyle(color: context.theme.greyColor),
                ),
              ),
              RadioListTile(
                value: false,
                groupValue: true,
                onChanged: (value) {},
                activeColor: Colours.greeDark,
                title: const Text(" ગુજરાતી "),
                subtitle: Text(
                  " India ",
                  style: TextStyle(color: context.theme.greyColor),
                ),
              )
            ],
          ),
        );
        /*
        Container(
          height: 300,
          child: Column(
            children: [
              Text('Bottom Sheet Content'),
              // You can add more widgets as needed
            ],
          ),
        );
        */
      }, // <-- Add a comma here
    ); // <-- Add a semicolon here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Image.asset(
                  "assets/images/circle.png",
                  color: Colors.green,
                  //color: context.theme.circleImageColor,
                ),

                //color: Colors.green,
                //color: Theme.of(context).circleImageColor ?? Colors.green,
                // ),
              ),
            ),
          ),
          const SizedBox(
            height: 43,
          ),
          Expanded(
            child: Column(
              children: [
                Center(
                  child: Center(
                    child: Text(
                      'Welcome to WhatsApp',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,

                        //background theme ke hisaabse text color change hogaaa
                        color: Theme.of(context).brightness == Brightness.dark
                            ? ThemeData.dark().textTheme.headlineLarge!.color
                            : ThemeData.light().textTheme.headlineLarge!.color,
                      ),
                    ),
                  ),
                ),
                const PrivacyAndTerms(),
                CustomElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  text: 'AGREE AND CONTINUE',
                  textStyle: TextStyle(),
                ),
                const SizedBox(
                  height: 50,
                ),
                Material(
                  color: Color(0xFF182235),
                  borderRadius: BorderRadius.circular(22),
                  child: InkWell(
                    onTap: () {
                      showBottomSheet(context);
                    },
                    borderRadius: BorderRadius.circular(22),
                    splashFactory: InkSplash.splashFactory,
                    highlightColor: Color.fromARGB(255, 9, 20, 27),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 13, vertical: 6),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.language,
                            color: Color(0xFF00A885),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            ' English ',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Color.fromARGB(255, 110, 255, 226),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
