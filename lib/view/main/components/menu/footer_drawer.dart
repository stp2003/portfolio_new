import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FooterDrawer extends StatelessWidget {
  const FooterDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Made with Flutter with ',
          style: TextStyle(
            letterSpacing: 0.8,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          CupertinoIcons.heart_fill,
          color: Colors.red,
          size: 16,
        ),
      ],
    );
  }
}
