import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding / 2),
        AreaInfoText(title: 'Contact', text: '9336908109'),
        AreaInfoText(title: 'Email', text: 'tshashwat856@gmail.com'),
        AreaInfoText(title: 'Leetcode', text: 'shashwat_22'),
        AreaInfoText(title: 'Github', text: 'stp2003'),
        SizedBox(height: defaultPadding),
        Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
