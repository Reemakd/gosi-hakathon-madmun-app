import 'package:flutter/material.dart';
import 'package:gosi_hakathon_madmun_app/core/app_export.dart';
import 'dart:async'; 

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Future.delayed to wait for 6 seconds
    Future.delayed(Duration(seconds: 4), () {
      // After 6 seconds, navigate to the home page 
      Navigator.pushReplacementNamed(context, AppRoutes.homePage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGrowth2,
                height: 443.v,
                width: 305.h,
                alignment: Alignment.bottomLeft,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 129.v,
                  width: 312.h,
                  margin: EdgeInsets.only(top: 306.v),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMadmun,
                        height: 129.v,
                        width: 312.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 77.v,
                          width: 79.h,
                          margin: EdgeInsets.only(
                            top: 8.v,
                            right: 17.h,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 51.v,
                                  width: 50.h,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                  decoration: BoxDecoration(
                                    color: appTheme.gray100,
                                    borderRadius: BorderRadius.circular(
                                      25.h,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgFinancialGrowth,
                                height: 77.v,
                                width: 78.h,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
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
}
