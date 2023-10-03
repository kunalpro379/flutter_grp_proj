//import 'dart:js';

import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider, ref;
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/src/framework.dart';
import 'package:whatsapp/common/helper/show_alert_dilog.dart';
//import 'package:whatsapp/feature/auth/controller/auth_controller.dart';
import '../../common/extension/custon_theme_extension.dart';
import '../../common/widgets/custom_elevated_button.dart';
import 'widgets/Custom_Icon.dart';
import 'widgets/custom_text_field.dart';
import '../../common/route/routes.dart';
import 'package:whatsapp/feature/welcome/pages/verification_pages.dart';
import 'package:whatsapp/feature/auth/lib/feature/auth/controller/auth_controller.dart';

import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
//import 'package:whatsapp/feature/auth/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/common/helper/show_alert_dilog.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;

  // get ref => null;

  //var ref;
  void SendCodeToPhone(BuildContext context) {
    final phoneNumber = phoneNumberController.text;
    final countryName = countryNameController.text;
    final countryCode = countryCodeController.text;

    if (phoneNumber.isEmpty) {
      showAlertDialog(
          context: context,
          message:
              'Please enter your phone number: $countryName.\n\nInclude your area code');
    } else if (phoneNumber.length < 9) {
      showAlertDialog(
          context: context,
          message:
              'Please enter a valid mobile number. Phone number is too short: $countryName.');
    } else if (phoneNumber.length > 10) {
      showAlertDialog(
          context: context,
          message:
              'Please enter a valid mobile number. Phone number is too long.');
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VerificationPage(),
        ),
      );
    }
// authControllerProvider.read(context as Node).sendSmsCode(
//       context: context,
//       phoneNumber: '+$countryCode $phoneNumber',
//     );
  }

  @override
  void initState() {
    super.initState();
    countryNameController = TextEditingController(text: 'India');
    countryCodeController = TextEditingController(text: '+91');
    phoneNumberController = TextEditingController();
  }

  @override
  void dispose() {
    countryCodeController.dispose();
    countryNameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  showCountryCodePicker(BuildContext context) {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      favorite: ['IN'],
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 600,
        backgroundColor: Theme.of(context).dialogBackgroundColor,
        flagSize: 25,
        borderRadius: BorderRadius.circular(30),
        textStyle: TextStyle(color: context.theme.authAppbartextColor),
        inputDecoration: InputDecoration(
          labelStyle: TextStyle(color: context.theme.authAppbartextColor),
          prefixIcon: const Icon(
            Icons.language,
            color: Colors.green,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(1),
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
        ),
      ),
      onSelect: (Country country) {
        setState(() {
          countryNameController.text = country.name;
          countryCodeController.text = country.phoneCode;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 8,
        title: Text(
          "Enter your Number",
          style: TextStyle(
            color: context.theme.authAppbartextColor,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "WhatsApp will need to verify your Phone number",
                style: TextStyle(
                  color: context.theme.greyColor,
                  height: 2,
                ),
                children: [
                  TextSpan(
                    text: "What's my Number?",
                    style: TextStyle(color: context.theme.blueColor),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: MyCustomTextField(
              controller: countryNameController,
              onTap: () => showCountryCodePicker(context),
              readOnly: true,
              suffixIcon:
                  const Icon(Icons.arrow_drop_down, color: Colors.green),
              autofocus: false,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  child: MyCustomTextField(
                    onTap: () => showCountryCodePicker(context),
                    controller: countryCodeController,
                    hintText: 'phone',
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.text,
                    suffixIcon:
                        const Icon(Icons.arrow_drop_down, color: Colors.green),
                    autofocus: false,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: TextField(
                    onTap: () {},
                    controller: phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Phone Number',
                      icon: Icon(Icons.account_box, color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Carrier Charges may apply",
            style: TextStyle(
              color: context.theme.greyColor,
            ),
          ),
          Text(
            "We respect your privacy",
            style: TextStyle(color: context.theme.blueColor),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              SendCodeToPhone(context);
            },
            child: Icon(Icons.arrow_forward),
          ),
          SizedBox(height: 10), // Adjust the spacing as needed
          Text(
            "NEXT",
            style: TextStyle(
              color: context.theme.blueColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
//   void showAlertDialog(BuildContext context, String message) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text(
//             'Alert',
//             style: TextStyle(fontSize: 20, color: Colors.blue),
//           ),
//           content: Text(
//             message,
//             style: TextStyle(fontSize: 16),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text(
//                 "OKAY BRO",
//                 style: TextStyle(color: context.theme.blueColor),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

// class MyCustomTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final VoidCallback onTap;
//   final bool readOnly;
//   final Widget suffixIcon;
//   final bool autofocus;

//   const MyCustomTextField({
//     required this.controller,
//     required this.onTap,
//     required this.readOnly,
//     required this.suffixIcon,
//     required this.autofocus, required TextAlign textAlign, required String hintText, required TextInputType keyboardType,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       onTap: onTap,
//       readOnly: readOnly,
//       autofocus: autofocus,
//       decoration: InputDecoration(
//         labelText: 'Label',
//         hintText: 'Hint',
//         suffixIcon: suffixIcon,
//       ),
//     );
//   }
// }


/*





class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  navigateToVerificationPage(context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(Routes.verification, (route) => false);
  }

  @override
  State<LoginPage> createState() => MyWidgetState();
}

class MyWidgetState extends State<LoginPage> {
  late TextEditingController countryNameController;
//late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;

  //var PhoneNumber;

  get VerificationId => null;
//late TextEditingController countryNameController;
  void initState() {
    countryNameController = TextEditingController(text: ' भारत ');
    countryCodeController = TextEditingController(text: '+91');
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    countryCodeController.dispose();
    countryNameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  //final authController = (authControllerProvider);

  void sendCodeToPhone() {
    final phoneNumber = phoneNumberController.text;
    final countryName = countryNameController.text;
    final countryCode = countryCodeController.text;
    if (phoneNumber.isEmpty) {
      showAlertDialog(
          context: context,
          message:
              'Please enter your phone number: $countryName. \n\n Include your area code');
    } else if (phoneNumber.length < 9) {
      showAlertDialog(
          context: context,
          message: 'Phone number is too short : $countryName');
    } else if (phoneNumber.length > 10) {
      showAlertDialog(context: context, message: 'Phone number is too long');
    }
  }

  showCountryCodePicker(BuildContext context) {
    // Pass the context as a parameter
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      favorite: ['IN'],
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 600,
        backgroundColor:
            Theme.of(context).dialogBackgroundColor, // Remove "as BuildContext"
        flagSize: 25,
        borderRadius: BorderRadius.circular(30),
        textStyle: TextStyle(color: context.theme.authAppbartextColor),
        inputDecoration: InputDecoration(
          labelStyle: TextStyle(color: context.theme.authAppbartextColor),
          prefixIcon: const Icon(
            Icons.language,
            color: Colours.greeDark,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colours.greyDark!.withOpacity(1),
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colours.greeDark,
            ),
          ),
        ),
      ),
      onSelect: (Country country) {
        setState(() {
          countryNameController.text = country.name; // Set  country name
          countryCodeController.text = country.phoneCode; // Set  country code
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 8,
        title: Text(
          "Enter your Number",
          style: TextStyle(
            color: context.theme.authAppbartextColor,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            onTap: () {},
            icon: Icons.more_vert,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "     WhatsApp will need to verify your Phone number  ",
                style: TextStyle(
                  color: context.theme.greyColor,
                  height: 2,
                ),
                children: [
                  TextSpan(
                    text: "  What's my Number?",
                    style: TextStyle(color: context.theme.blueColor),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: MyCustomTextField(
              controller: countryNameController,
              onTap: () => showCountryCodePicker(
                  context), // Call the function with context

              readOnly: true,
              suffixIcon:
                  const Icon(Icons.arrow_drop_down, color: Colours.greeDark),
              autofocus: false,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  child: MyCustomTextField(
                    onTap: () => showCountryCodePicker(
                        context), // Call the function with context

                    controller: countryCodeController,
                    hintText: 'phone',
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.text,
                    suffixIcon: const Icon(Icons.arrow_drop_down,
                        color: Colours.greeDark),
                    autofocus: false,
                  ), /*
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    controller: phoneNumberController,
                    keyboardType:
                        TextInputType.phone, // Specify phone number input type
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Enter your phone number',
                      prefixText: '+',
                    ),
                  ),   */
                ),
                SizedBox(width: 5),
                Expanded(
                  child: TextField(
                      onTap: () {},
                      controller: phoneNumberController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        hintText: 'Phone Number',
                        //prefixText: '+',
                        icon: Icon(Icons.account_box, color: Colours.greeDark),

                        //icon: Icon(Icons.account_box, color: Colours.greeDark
                      )),

                  //textAlign: TextAlign.left,
                  //keyboardType: TextInputType.text,

//icon: Icon(Icons.account_box, color: Colours.greeDark),
                ),
                //),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            " Carrier Charges may apply ",
            style: TextStyle(
              color: context.theme.greyColor,
            ),
          ),
          Text(
            " We don't respect your privacy ",
            style: TextStyle(color: context.theme.blueColor),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VerificationPage(),
            ),
          );
        },

        text: 'NEXT',
        buttondWidth: 70, // Fix the property name
        textStyle: TextStyle(color: context.theme.authAppbartextColor),
      ),
    );
  }
}


























class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController phoneNumberController;

  @override
  void initState() {
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 8,
        title: Text(
          "Enter your Number",
          style: TextStyle(
            color: context.theme.authAppbartextColor,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            splashColor: Colors.transparent,
            splashRadius: 25,
            iconSize: 25,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minHeight: 5, minWidth: 40),
            icon: Icon(
              Icons.more_vert,
              color: context.theme.greyColor,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: 80,
            child: MyCustomTextField(
              onTap: () {},
              controller: phoneNumberController,
              hintText: 'phone',
              textAlign: TextAlign.left,
              keyboardType: TextInputType.text,
              suffixIcon:
                  const Icon(Icons.arrow_drop_down, color: Colours.greeDark),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: MyCustomTextField(
              onTap: () {},
              controller: phoneNumberController,
              hintText: ' Phone Number ',
              textAlign: TextAlign.left,
              keyboardType: TextInputType.text,
              suffixIcon:
                  const Icon(Icons.account_box, color: Colours.greeDark),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              controller: phoneNumberController,
              keyboardType:
                  TextInputType.phone, // Specify phone number input type
              decoration: InputDecoration(
                labelText: 'Phone Number',
                hintText: 'Enter your phone number',
                prefixText: '+',
              ),
            ),
          ),

          // ... Other widgets
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed: () {
          //String phoneNumber = phoneNumberController.text;
          // Do something with the phoneNumber, e.g., validate or process it.
        },
        child: Text('NEXT'),
      ),
    );
  }
}
*/
