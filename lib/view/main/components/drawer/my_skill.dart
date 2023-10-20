import 'package:flutter/material.dart';

import 'animated_linear_progress_indicator.dart';

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
          percentage: 0.7,
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
          percentage: 0.6,
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
