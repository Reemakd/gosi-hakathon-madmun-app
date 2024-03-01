import 'package:flutter/material.dart';
import 'package:gosi_hakathon_madmun_app/core/app_export.dart';

class AppbarLeadingImage extends StatelessWidget {
  AppbarLeadingImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(key: key);

  String? imagePath;
  EdgeInsetsGeometry? margin;
  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return InkWell(
          onTap: () {
            final ScaffoldState scaffold = Scaffold.of(context);
            if (scaffold == null) return;

            if (scaffold.isDrawerOpen) {
              scaffold.openDrawer();
            } else {
              scaffold.openDrawer();
            }
          },
          child: Padding(
            padding: margin ?? EdgeInsets.zero,
            child: CustomImageView(
              imagePath: imagePath,
              height: 25.v,
              width: 30.h,
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }
}
