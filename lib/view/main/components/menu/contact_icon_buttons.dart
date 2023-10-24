import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactIconButton extends StatefulWidget {
  final String url;
  final String iconPath;
  final Color defaultColor;
  final Color hoverColor;

  const ContactIconButton({
    super.key,
    required this.url,
    required this.iconPath,
    this.defaultColor = Colors.white54,
    this.hoverColor = Colors.blue,
  });

  @override
  State<ContactIconButton> createState() => _ContactIconButtonState();
}

class _ContactIconButtonState extends State<ContactIconButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: InkWell(
        onTap: () {
          launchUrl(Uri.parse(widget.url));
        },
        child: SvgPicture.asset(
          widget.iconPath,
          width: 18.0,
          height: 18.0,
          colorFilter: ColorFilter.mode(
            _isHovered ? widget.hoverColor : widget.defaultColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
