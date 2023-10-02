//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:whatsapp/feature/auth/login_page.dart';
import 'package:whatsapp/feature/welcome/pages/verification_pages.dart';
import 'package:whatsapp/feature/welcome/pages/welcome_page.dart';

class Routes {
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String verification = 'verification';

  static const String userinfo = 'userinfo';

  // static const String welcome = 'welcome';
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(
          builder: (context) => const WelcomePage(),
        );

      case login:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );

      case verification:
        final Map args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => VerificationPage(
              //VerificationId: args['verification'],
              //PhoneNumber: args['phone Number'],
              ),
        );

      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text('No Page Route Provided'),
                  ),
                ));
    }
  }
}
