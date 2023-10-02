import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custon_theme_extension.dart';
import 'package:whatsapp/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp/feature/auth/widgets/Custom_Icon.dart';
import 'package:whatsapp/feature/auth/widgets/custom_text_field.dart';
import 'package:whatsapp/feature/welcome/pages/user_info_pages.dart';

import 'lib/feature/auth/login_page.dart';

class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 11,
        title: Text(
          'Verify your number',
          style: TextStyle(
            color: context.theme.authAppbartextColor,
          ),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            onTap: () {},
            icon: Icons.more_vert,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: context.theme.greyColor,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "You've tried to register +919892885090, before requesting an SMS or call with  code ",
                    ),
                    TextSpan(
                      text: 'Wrong number ?',
                      style: TextStyle(
                        color: context.theme.blueColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.message, color: context.theme.greyColor),
                const SizedBox(height: 40),
              ],
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  hintText: ' Enter OTP',
                  hintStyle: TextStyle(fontSize: 25),
                  suffixIcon: Icon(Icons.lock),
                ),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Enter 6-Digit OTP code',
              style: TextStyle(color: context.theme.circleImageColor),
            ),
            Row(
              children: [
                Icon(Icons.message, color: context.theme.greyColor),
                const SizedBox(height: 40),
                Text(
                  ' Resend Message',
                  style: TextStyle(color: context.theme.blueColor),
                ),
              ],
            ),
            Divider(
              thickness: 0.2,
              color: context.theme.greyColor!.withOpacity(1),
              endIndent: 2,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: () {
          // Navigate to the next page when the "NEXT" button is pressed
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  UserInfoPage(), // Replace with the actual destination page
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
