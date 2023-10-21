import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ProjectImageViewer {
  ProjectImageViewer(
    BuildContext context,
    String image,
  ) {
    showGeneralDialog(
      barrierColor: Colors.black,
      transitionDuration: const Duration(milliseconds: 500),
      barrierDismissible: true,
      barrierLabel: 'Barrier',
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Hero(
            tag: 'IMAGEVIEW',
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Scaffold(
                backgroundColor: Colors.black,
                body: Container(
                  color: Colors.white,
                  child: Center(
                    child: PhotoView(
                      imageProvider: AssetImage(image),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
