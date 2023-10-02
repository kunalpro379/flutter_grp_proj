import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp/common/route/routes.dart';
import 'package:whatsapp/common/theme/dark_theme.dart';
import 'package:whatsapp/common/theme/light_theme.dart';
import 'package:whatsapp/feature/auth/login_page.dart';
import 'package:whatsapp/feature/welcome/pages/user_info_pages.dart';
import 'package:whatsapp/feature/welcome/pages/verification_pages.dart';
import 'package:whatsapp/feature/welcome/pages/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:whatsapp/firebase_options.dart';

//import 'package:firebase_core/firebase_core.dart';
//import 'lib/feature/welcome/pages/user_info_pages.dart';
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp_FBI',
      //system ke hisaabse thmeme change hoga dark or light
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const WelcomePage(),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}

/* Scaffold(
        body: Center(
          child: Text('Front Page'),
        ),
      ),*/
