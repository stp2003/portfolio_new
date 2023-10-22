import 'package:flutter/material.dart';
import 'package:portfolio_new/utils/constants.dart';

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
                    height: 15,
                    width: 15,
                    fit: BoxFit.fill,
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
