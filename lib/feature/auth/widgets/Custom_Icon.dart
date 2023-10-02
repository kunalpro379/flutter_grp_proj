import 'dart:io';
import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custon_theme_extension.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final double? minWidth;
  final BoxBorder? border;
  final Color? backgroud;
  //final CustomIconButton

  const CustomIconButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.iconColor,
    this.iconSize,
    this.minWidth,
    this.border,
    this.backgroud,
  });

  // get minHeight => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroud, shape: BoxShape.circle, border: border),
      child: IconButton(
        onPressed: onTap,
        splashColor: Colors.transparent,
        splashRadius: (minWidth ?? 45) - 25,
        iconSize: iconSize ?? 25,
        padding: EdgeInsets.zero,
        constraints:
            BoxConstraints(minWidth: minWidth ?? 50, minHeight: minWidth ?? 50),
        icon: Icon(
          icon,
          color: iconColor ?? context.theme.greyColor,
        ),
      ),
    );
  }
}
