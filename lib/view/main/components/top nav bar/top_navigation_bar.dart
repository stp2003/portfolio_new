import 'package:flutter/material.dart';
import 'package:portfolio_new/view%20model/responsive.dart';
import 'package:portfolio_new/view/intro/components/side_menu_button.dart';
import 'package:portfolio_new/view/main/components/top%20nav%20bar/whatsapp_connect_button.dart';

import '../../../../utils/constants.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: !Responsive.isLargeMobile(context)
                ? Image.asset('assets/images/batman.png')
                : SideMenuButton(
                    onTap: () => Scaffold.of(context).openDrawer(),
                  ),
          ),
          const Spacer(flex: 2),
          if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
          const Spacer(flex: 2),
          const WhatsAppConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
