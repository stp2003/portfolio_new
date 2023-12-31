import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:portfolio_new/utils/constants.dart';
import 'package:portfolio_new/view%20model/controller.dart';
import 'package:portfolio_new/view/main/components/top%20nav%20bar/top_navigation_bar.dart';

import '../../view model/responsive.dart';
import 'components/menu/custom_menu.dart';
import 'components/top nav bar/navigation_button_list.dart';

class MainView extends StatelessWidget {
  const MainView({
    super.key,
    required this.pages,
  });

  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomMenu(),
      body: Center(
        child: Column(
          children: [
            kIsWeb && !Responsive.isLargeMobile(context)
                ? const SizedBox(height: defaultPadding * 2)
                : const SizedBox(height: defaultPadding / 2),
            const SizedBox(
              height: 80,
              child: TopNavigationBar(),
            ),
            if (Responsive.isLargeMobile(context))
              const Row(
                children: [
                  Spacer(),
                  NavigationButtonList(),
                  Spacer(),
                ],
              ),
            Expanded(
              flex: 9,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [...pages],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
