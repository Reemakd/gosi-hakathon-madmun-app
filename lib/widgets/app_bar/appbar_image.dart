import 'package:flutter/material.dart';
import 'package:gosi_hakathon_madmun_app/core/app_export.dart';

// ignore: must_be_immutable
class AppbarImage extends StatelessWidget {
  AppbarImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: CustomImageView(
          imagePath: imagePath,
          height: 50.v,
          width: 50.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
