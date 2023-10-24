import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import 'contact_icon_buttons.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ContactIconButton(
            url: 'https://www.linkedin.com/in/shashwat-shandilya/',
            iconPath: 'assets/icons/linkedin.svg',
            defaultColor: Colors.white54,
            hoverColor: Colors.blueAccent,
          ),
          SizedBox(width: 15.0),
          ContactIconButton(
            url: 'https://github.com/stp2003',
            iconPath: 'assets/icons/github.svg',
            defaultColor: Colors.white54,
            hoverColor: Colors.blueGrey,
          ),
          SizedBox(width: 15.0),
          ContactIconButton(
            url: 'https://www.instagram.com/shashwat._22/',
            iconPath: 'assets/icons/instagram.svg',
            defaultColor: Colors.white54,
            hoverColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
