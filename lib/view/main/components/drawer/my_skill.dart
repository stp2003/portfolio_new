import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key,
    required this.percentage,
    required this.title,
    this.image,
    required this.color,
  });

  final double percentage;
  final String title;
  final String? image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    image!,
                    height: 10,
                    width: 10,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              const SizedBox(height: defaultPadding / 2),
              LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.black,
                color: color,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          title: 'Flutter',
          image: 'assets/icons/flutter.png',
          color: Colors.cyan,
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          title: 'Dart',
          image: 'assets/icons/dart.png',
          color: Colors.yellow,
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          title: 'Firebase',
          image: 'assets/icons/firebase.png',
          color: Colors.blue,
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.85,
          title: 'Java',
          image: 'assets/images/java.png',
          color: Colors.purple,
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          title: 'Responsive Design',
          image: 'assets/icons/flutter.png',
          color: Colors.pink,
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          title: 'Kotlin',
          image: 'assets/images/kotlin.png',
          color: Colors.orange,
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.4,
          title: 'Bloc',
          image: 'assets/icons/bloc.png',
          color: Colors.teal,
        ),
      ],
    );
  }
}
