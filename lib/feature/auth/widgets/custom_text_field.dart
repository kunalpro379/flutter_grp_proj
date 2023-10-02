import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custon_theme_extension.dart';
import 'package:whatsapp/common/utils/colours.dart';

abstract class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.readOnly,
    this.textAlign,
    this.keyboardType,
    this.prefixText,
    required this.onTap,
    this.onChanged,
    this.suffixIcon,
    this.fontSize,
    this.autoFocus,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final String? prefixText;
  final VoidCallback onTap;
  final Function(String)? onChanged;
  final Icon? suffixIcon;
  final double? fontSize;
  final bool? autoFocus;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTap,
      controller: widget.controller,
      readOnly: widget.readOnly ?? widget.keyboardType != null,
      onChanged: widget.onChanged,
      style: TextStyle(fontSize: widget.fontSize),
      decoration: InputDecoration(
        isDense: true,
        prefixText: widget.prefixText,
        suffixIcon: widget.suffixIcon,
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colours.greyLight),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colours.greeDark),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colours.greeDark, width: 2),
        ),
      ),
    );
  }
}

class MyCustomTextField extends CustomTextField {
  MyCustomTextField({
    Key? key,
    TextEditingController? controller,
    String? hintText,
    bool? readOnly,
    TextAlign? textAlign,
    TextInputType? keyboardType,
    String? prefixText,
    required VoidCallback onTap,
    Function(String)? onChanged,
    Icon? suffixIcon,
    double? fontSize,
    required bool autofocus,
  }) : super(
          key: key,
          controller: controller,
          hintText: hintText,
          readOnly: readOnly,
          textAlign: textAlign,
          keyboardType: keyboardType,
          prefixText: prefixText,
          onTap: onTap,
          onChanged: onChanged,
          suffixIcon: suffixIcon,
          fontSize: fontSize,
        );
}
