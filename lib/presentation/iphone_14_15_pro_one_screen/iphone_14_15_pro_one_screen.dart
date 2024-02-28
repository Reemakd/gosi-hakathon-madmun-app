import 'package:gosi_hakathon_madmun_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/appbar_title.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/appbar_image.dart';
import 'package:gosi_hakathon_madmun_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:gosi_hakathon_madmun_app/core/app_export.dart';

class Iphone1415ProOneScreen extends StatelessWidget {
  const Iphone1415ProOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Spacer(),
              CustomElevatedButton(
                text: "ادخار",
                margin: EdgeInsets.only(
                  left: 27.h,
                  right: 23.h,
                ),
              ),
              SizedBox(height: 56.v),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 456.v,
                  width: 363.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGrowth1,
                        height: 426.v,
                        width: 309.h,
                        alignment: Alignment.bottomRight,
                      ),
                      CustomElevatedButton(
                        width: 343.h,
                        text: "استثمار",
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        alignment: Alignment.topLeft,
                      ),
                      CustomElevatedButton(
                        width: 343.h,
                        text: "التنبؤ الذكي",
                        margin: EdgeInsets.only(top: 139.v),
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientPrimaryToOnPrimaryDecoration,
                        alignment: Alignment.topLeft,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 31.h,
          top: 22.v,
          bottom: 15.v,
        ),
      ),
      actions: [
        AppbarTitle(
          text: "اهلا، احمد",
          margin: EdgeInsets.fromLTRB(23.h, 16.v, 4.h, 7.v),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 14.h,
            top: 4.v,
            right: 27.h,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder24,
          ),
          child: AppbarImage(
            imagePath: ImageConstant.imgPlay,
          ),
        ),
      ],
    );
  }
}
