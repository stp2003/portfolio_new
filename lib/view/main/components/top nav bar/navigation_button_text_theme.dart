import 'package:flutter/material.dart';

class NavigationButtonTextTheme extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const NavigationButtonTextTheme({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 15.0,
              letterSpacing: 0.5,
            ),
      ),
    );
  }
}
