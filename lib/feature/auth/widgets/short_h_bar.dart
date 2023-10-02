import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custon_theme_extension.dart';

class ShortHBar extends StatefulWidget {
  const ShortHBar({
    Key? key,
    this.height,
    this.width,
    this.color,
  }) : super(key: key);

  final double? height;
  final double? width;
  final Color? color;

  @override
  State<ShortHBar> createState() => _ShortHBarState();
}

class _ShortHBarState extends State<ShortHBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 5,
      width: widget.width ?? 25,
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: widget.color ?? context.theme.greyColor!.withOpacity(0.8),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
