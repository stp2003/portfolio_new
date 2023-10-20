import 'package:flutter/material.dart';

import 'knowledge_text_style.dart';

class MyKnowledge extends StatelessWidget {
  const MyKnowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeTextStyle(knowledge: 'Flutter, Dart'),
        KnowledgeTextStyle(knowledge: 'Java, DSA'),
        KnowledgeTextStyle(knowledge: 'Git, Github'),
        KnowledgeTextStyle(knowledge: 'Android Development'),
        KnowledgeTextStyle(knowledge: 'Kotlin'),
      ],
    );
  }
}
