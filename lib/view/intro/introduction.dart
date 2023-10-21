import 'package:flutter/material.dart';
import 'package:portfolio_new/view%20model/responsive.dart';
import 'package:portfolio_new/view/intro/components/follow_me_home.dart';
import 'package:portfolio_new/view/intro/components/intro_body.dart';
import 'package:portfolio_new/view/intro/components/side_menu_button.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.01,
          ),
          if (!Responsive.isLargeMobile(context))
            SideMenuButton(
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.02,
          ),
          if (!Responsive.isLargeMobile(context)) const FollowMeHome(),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.07,
          ),
          const Expanded(
            child: IntroBody(),
          ),
        ],
      ),
    );
  }
}
