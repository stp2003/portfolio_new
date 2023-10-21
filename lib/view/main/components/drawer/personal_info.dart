import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import 'personal_info_text_style.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding / 2),
        PersonalInfoTextStyle(title: 'Contact', text: '9336908109'),
        PersonalInfoTextStyle(title: 'Email', text: 'tshashwat856@gmail.com'),
        PersonalInfoTextStyle(title: 'Leetcode', text: 'shashwat_22'),
        PersonalInfoTextStyle(title: 'Github', text: 'stp2003'),
        SizedBox(height: defaultPadding),
        Text(
          'Skills',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.8,
          ),
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
