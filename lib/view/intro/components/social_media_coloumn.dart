import 'package:flutter/material.dart';
import 'package:portfolio_new/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
          icon: 'assets/icons/linkedin.svg',
          onTap: () => launchUrl(
            Uri.parse(
              'https://www.linkedin.com/in/shashwat-shandilya/',
            ),
          ),
        ),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () => launchUrl(
            Uri.parse(
              'https://github.com/stp2003',
            ),
          ),
        ),
        SocialMediaIcon(
          icon: 'assets/icons/leetcode.svg',
          onTap: () => launchUrl(
            Uri.parse(
              'https://leetcode.com/shashwat_22/',
            ),
          ),
        ),
        SocialMediaIcon(
          icon: 'assets/icons/twitter.svg',
          onTap: () => launchUrl(
            Uri.parse(
              'https://twitter.com/frank_castle_',
            ),
          ),
        ),
        SocialMediaIcon(
          icon: 'assets/icons/instagram.svg',
          onTap: () => launchUrl(
            Uri.parse(
              'https://www.instagram.com/shashwat._22/',
            ),
          ),
        ),
      ],
    );
  }
}
