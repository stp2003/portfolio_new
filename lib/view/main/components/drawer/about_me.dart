import 'package:flutter/material.dart';
import 'package:portfolio_new/utils/constants.dart';

import 'profile_image.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor,
        child: Column(
          children: [
            const Spacer(flex: 2),
            const ProfileImage(),
            const Spacer(),
            Text(
              'Shashwat Shandilya',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    letterSpacing: 0.8,
                  ),
            ),
            const SizedBox(height: defaultPadding / 4),
            const Text(
              'Flutter Developer & Computer Science Student',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
