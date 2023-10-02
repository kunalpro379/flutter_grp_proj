import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custon_theme_extension.dart';

import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

showAlertDialog({
  required BuildContext context,
  String? message,
  String? btnText,
  Container? child,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(
          message!,
          style: TextStyle(
              color: Theme.of(context).scaffoldBackgroundColor, fontSize: 15),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              btnText ?? "OKAY",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
        ],
      );
    },
  );
}
