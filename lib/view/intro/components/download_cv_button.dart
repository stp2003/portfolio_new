import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/constants.dart';

class DownloadCVButton extends StatelessWidget {
  const DownloadCVButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(
          Uri.parse(
            'https://drive.google.com/file/d/1nTmYHWZhUMZANO70ZLINsPs08YD9m4TS/view?usp=sharing',
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: defaultPadding / 1.5,
          horizontal: defaultPadding * 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.tealAccent,
              offset: Offset(0, -1),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Colors.red,
              offset: Offset(0, 1),
              blurRadius: 5,
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.pink,
              Colors.cyan,
            ],
          ),
        ),
        child: Row(
          children: [
            Text(
              'Download CV',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Colors.white,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(width: defaultPadding / 3),
            const Icon(
              FontAwesomeIcons.download,
              color: Colors.white70,
              size: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
