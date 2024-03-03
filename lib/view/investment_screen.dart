import 'package:gosi_hakathon_madmun_app/view/home_page.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/appbar_title.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/appbar_image.dart';
import 'package:flutter/material.dart';
import 'package:gosi_hakathon_madmun_app/core/app_export.dart';
import 'package:gosi_hakathon_madmun_app/widgets/custom_side_menu.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({Key? key})
      : super(
          key: key,
        );

  @override
Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      appBar: _buildAppBar(context),
      drawer: const CustomSideMenu(), 
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32.v),
              _buildOne(context),
              SizedBox(height: 55.v),
              SizedBox(
                height: 496.v,
                width: 312.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 93.h,
                        right: 140.h,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to home page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(), 
                            ),
                          );
                        },
                        child: _buildPay(
                          context,
                          user: ImageConstant.imgWarning,
                          label: "الغاء",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 233.h),
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to home page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(), 
                            ),
                          );
                        },
                        child: _buildPay(
                          context,
                          user: ImageConstant.imgWallet,
                          label: "تعديل",
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGrowth2,
                      height: 443.v,
                      width: 305.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
            ],
          ),
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

  /// Section Widget
Widget _buildOne(BuildContext context) {
  return Align(
    alignment: Alignment.center,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 32.h),
      padding: EdgeInsets.symmetric(vertical: 25.v),
      decoration: AppDecoration.gradientBlueGrayToTeal.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder24,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildStackItem(
                imagePath: ImageConstant.imgDuration,
                label: "المدة",
              ),
              _buildStackItem(
                imagePath: ImageConstant.imgTarget,
                label: "المبلغ",
              ),
            ],
          ),
          SizedBox(height: 20.v), 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildStackItem(
                imagePath: ImageConstant.imgTarget, 
                label: "العوائد",
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


Widget _buildStackItem({
  required String imagePath,
  required String label,
}) {
  return Padding(
    padding: EdgeInsets.only(top: 21.v),
    child: Column(
      children: [
        SizedBox(
          height: 100.v,
          width: 120.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: imagePath,
                height: 100.v,
                width: 100.h,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        SizedBox(height: 20.v),
        Text(
          label,
          style: theme.textTheme.titleMedium?.copyWith(
            color: Colors.white,
            fontFamily: 'TajawalBold', // Custom font family
        ),
        ),
      ],
    ),
  );
}


  Widget _buildPay(
    BuildContext context, {
    required String user,
    required String label,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 36.v,
            width: 63.h,
            padding: EdgeInsets.symmetric(
              horizontal: 19.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillGray10001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: CustomImageView(
              imagePath: user,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 5.v),
          Text(
            label,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ],
      ),
    );
  }

