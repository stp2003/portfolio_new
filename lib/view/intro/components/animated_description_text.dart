import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText({
    super.key,
    required this.start,
    required this.end,
  });

  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return DefaultTextStyle(
          style: TextStyle(
            color: Colors.grey,
            wordSpacing: 2,
            fontSize: value,
          ),
          child: AnimatedTextKit(
            isRepeatingAnimation: true,
            animatedTexts: [
              TyperAnimatedText(
                'I\'m capable of creating excellent, responsive mobile${Responsive.isMobile(context) || Responsive.isLargeMobile(context) ? '\n' : ''}apps, handling every thing from ${!Responsive.isLargeMobile(context) ? '\n' : ''}frontend to backend.',
              ),
              TyperAnimatedText(
                'I am also proficient in Data Structures and Algorithms.',
              ),
              TyperAnimatedText(
                'I am also good in Java and Kotlin.',
              ),
              TyperAnimatedText(
                'I also know Git and Github.',
              ),
            ],
            repeatForever: true,
          ),
        );
      },
    );
  }
}
