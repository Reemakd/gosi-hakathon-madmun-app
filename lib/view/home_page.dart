import 'package:gosi_hakathon_madmun_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/appbar_title.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/appbar_image.dart';
import 'package:gosi_hakathon_madmun_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:gosi_hakathon_madmun_app/core/app_export.dart';
import 'package:gosi_hakathon_madmun_app/widgets/custom_list_item.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        drawer: _buildDrawer(context), 
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
                      // Image in the bottom right corner
                      Padding(
                      padding: const EdgeInsets.only(right: 10, bottom: 10),
                      child: CustomImageView(
                         imagePath: ImageConstant.imgChatpot,
                         height: 80,
                         width: 80,
                         alignment: Alignment.bottomRight,
                      ),
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
        imagePath: ImageConstant.imageSideMenu,
        margin: EdgeInsets.only(
          left: 31.h,
          top: 22.v,
          bottom: 15.v,
        ),
      ),
      actions: [
        AppbarTitle(
          text: "اهلا، عبدالله",
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
            imagePath: ImageConstant.imgUserIcon,
          ),
        ),
      ],
    );
  }
}

Drawer _buildDrawer(BuildContext context) {
  return Drawer(
    child: Container(
      width: MediaQuery.of(context).size.width * 0.25, 
      color: appTheme.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20), 
          // List Items
          Expanded(
            child: ListView(
              shrinkWrap: true, 
              children: [
                CustomListItem(title: "الرئيسية", iconPath: ImageConstant.imageHomeIcon, onTap: () {
                  Navigator.pop(context); // Close drawer
                }),
                CustomListItem(title: "مدخراتي", iconPath: ImageConstant.imageEdikharIcon, onTap: () {
                  Navigator.pop(context); // Close drawer
                }),
                CustomListItem(title: "استثماراتي", iconPath: ImageConstant.imageEstithmarIcon, onTap: () {
                  Navigator.pop(context); // Close drawer
                }),
                CustomListItem(title: "دليلك", iconPath: ImageConstant.imageDocumentIcon, onTap: () {
                  Navigator.pop(context); // Close drawer
                }),
              ],
            ),
          ),
          // Bottom Logo Image
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset(
              ImageConstant.imageGosiLogo, 
              height: 40,
              width: 40,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    ),
  );
}

