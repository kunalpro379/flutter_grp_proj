import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custon_theme_extension.dart';

class languageButton extends StatelessWidget {
  const languageButton({super.key});

void showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: 400,
        child: Column(
          children: [
           
            Text('Bottom Sheet Content'),
            // You can add more widgets as needed
          ],
        ),
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.languageButtonBgColor,
      //color: Color(0xFF182235),
      borderRadius: BorderRadius.circular(22),
      child: InkWell(
        onTap: () => showBottomSheet(context),
        borderRadius: BorderRadius.circular(22),
        splashFactory: InkSplash.splashFactory,
        highlightColor: Color.fromARGB(255, 9, 20, 27),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
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
    );
  }
}
