import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants.dart';

class KnowledgeTextStyle extends StatelessWidget {
  const KnowledgeTextStyle({
    super.key,
    required this.knowledge,
  });

  final String knowledge;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(width: defaultPadding / 2),
          Text(knowledge),
        ],
      ),
    );
  }
}
