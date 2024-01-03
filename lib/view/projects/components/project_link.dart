import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatefulWidget {
  final int index;

  const ProjectLinks({
    super.key,
    required this.index,
  });

  @override
  State<ProjectLinks> createState() => _ProjectLinksState();
}

class _ProjectLinksState extends State<ProjectLinks> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {
                launchUrl(Uri.parse(projectList[widget.index].link));
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.lightGreenAccent;
                    }
                    return Colors.white;
                  },
                ),
              ),
              child: const Text(
                'Check on Github',
                overflow: TextOverflow.ellipsis,
              ),
            ),
            InkWell(
              onTap: () {
                launchUrl(Uri.parse(projectList[widget.index].link));
              },
              child: Lottie.asset(
                'assets/animations/github.json',
                height: 25.0,
                width: 25.0,
              ),
            ),
          ],
        ),
        const Spacer(),
        MouseRegion(
          onEnter: (_) {
            setState(() {
              onHover = true;
            });
          },
          onExit: (_) {
            setState(() {
              onHover = false;
            });
          },
          child: TextButton(
            onPressed: () {
              launchUrl(Uri.parse(projectList[widget.index].link));
            },
            child: Text(
              'Read More>>',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: onHover ? Colors.orange : Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
