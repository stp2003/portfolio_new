import 'package:flutter/material.dart';
import 'package:portfolio_new/view/main/components/drawer/contact_icons.dart';
import 'package:portfolio_new/view/main/components/drawer/personal_info.dart';

import '../../../../utils/constants.dart';
import 'about_me.dart';
import 'footer_drawer.dart';
import 'my_knowledge.dart';
import 'my_skill.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const AboutMe(),
            Container(
              color: bgColor,
              child: const Padding(
                padding: EdgeInsets.all(defaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PersonalInfo(),
                    MySKills(),
                    MyKnowledge(),
                    Divider(),
                    SizedBox(height: defaultPadding),
                    ContactIcon(),
                    SizedBox(height: defaultPadding),
                    FooterDrawer(),
                    SizedBox(height: defaultPadding / 2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
