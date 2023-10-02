import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? buttondWidth;
  final VoidCallback onPressed;
  final String text;
  const CustomElevatedButton({
    super.key,
    this.buttondWidth,
    required this.onPressed,
    required this.text,
    required TextStyle textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 45,
        width: buttondWidth ?? MediaQuery.of(context).size.width - 100,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF00A884),
              foregroundColor: const Color(0xFF111B21),
              splashFactory: NoSplash.splashFactory,
              elevation: 2,
              shadowColor: Colors.greenAccent,
            ),
            child: Text(text)));
  }
}
