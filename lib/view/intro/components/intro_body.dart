import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../view model/responsive.dart';
import 'animated_description_text.dart';
import 'animated_image_container.dart';
import 'combine_subtitle_text.dart';
import 'download_cv_button.dart';
import 'title_text_intro_screen.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!Responsive.isDesktop(context))
                SizedBox(height: size.height * 0.06),
              if (!Responsive.isDesktop(context))
                Row(
                  children: [
                    SizedBox(width: size.width * 0.23),
                    const AnimatedImageContainer(
                      width: 150,
                      height: 200,
                    ),
                  ],
                ),
              if (!Responsive.isDesktop(context))
                SizedBox(height: size.height * 0.1),
              const Responsive(
                desktop: TitleTextIntroScreen(start: 40, end: 50),
                largeMobile: TitleTextIntroScreen(start: 40, end: 35),
                mobile: TitleTextIntroScreen(start: 35, end: 30),
                tablet: TitleTextIntroScreen(start: 50, end: 40),
              ),
              if (kIsWeb && Responsive.isLargeMobile(context))
                Container(
                  height: defaultPadding,
                  color: Colors.transparent,
                ),
              const CombineSubtitleText(),
              const SizedBox(height: defaultPadding / 2),
              const Responsive(
                desktop: AnimatedDescriptionText(start: 14, end: 15),
                largeMobile: AnimatedDescriptionText(start: 14, end: 12),
                mobile: AnimatedDescriptionText(start: 14, end: 12),
                tablet: AnimatedDescriptionText(start: 17, end: 14),
              ),
              const SizedBox(height: defaultPadding * 2),
              const DownloadCVButton(),
            ],
          ),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context)) const AnimatedImageContainer(),
        const Spacer()
      ],
    );
  }
}
