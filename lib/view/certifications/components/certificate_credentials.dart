import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_new/model/certificate_model.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificateCredentials extends StatelessWidget {
  const CertificateCredentials({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(
          Uri.parse(certificateList[index].credential),
        );
      },
      child: Container(
        height: 40,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Colors.pink,
              Colors.lightBlue,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.blue,
              offset: Offset(0, -1),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Colors.red,
              offset: Offset(0, 1),
              blurRadius: 5,
            ),
          ],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Credentials',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(width: 7.0),
            Icon(
              CupertinoIcons.arrow_turn_up_right,
              color: Colors.white,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}
