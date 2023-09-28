import 'package:flutter/material.dart';
import 'package:portfolio_new/view/certifications/certifications.dart';
import 'package:portfolio_new/view/intro/introduction.dart';
import 'package:portfolio_new/view/main/main_view.dart';
import 'package:portfolio_new/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MainView(
        pages: [
          const Introduction(),
          ProjectsView(),
          Certifications(),
        ],
      ),
    );
  }
}
