import 'package:gosi_hakathon_madmun_app/view/smart_prediction_dialog.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/appbar_title.dart';
import 'package:gosi_hakathon_madmun_app/widgets/app_bar/appbar_image.dart';
import 'package:gosi_hakathon_madmun_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:gosi_hakathon_madmun_app/core/app_export.dart';
import 'package:gosi_hakathon_madmun_app/widgets/custom_side_menu.dart';
import 'package:gosi_hakathon_madmun_app/view/Estithmar.dart';
import 'package:gosi_hakathon_madmun_app/view/Edkhar.dart';
import 'package:gosi_hakathon_madmun_app/view/chatBot.dart';




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
        drawer: const CustomSideMenu(), 
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
            onPressed: () => Edkhar.openModalBottomSheet1(context)

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
                      width:343.h,
                       text: "استثمار",
                  //    margin: EdgeInsets.only(top: 139.v),  
                       buttonStyle: CustomButtonStyles.fillPrimary, 
                    //   decoration: CustomButtonStyles.fillPrimary,
                       onPressed: () => Estithmar.openModalBottomSheet(context)
                          ),

 
                      CustomElevatedButton(
                        width: 343.h,
                        text: "التنبؤ الذكي",
                        margin: EdgeInsets.only(top: 139.v),
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientPrimaryToOnPrimaryDecoration,
                        alignment: Alignment.topLeft,
                        onPressed: () => SmartPredictionDialog.showSmartPredictionDialog(context)
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 2, bottom: 20),
                        child: CustomElevatedButton(
                      width: 70.h,
                      height: 70.v,
                      text: "", 
                      margin: EdgeInsets.only(top: 139.v, right: 20),
                      buttonStyle: CustomButtonStyles.none,
                      alignment: Alignment.bottomRight,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/chatbot-2.png"), 
                          //fit: BoxFit.cover,
                        ),
                      ),
                      onPressed: () => chatBot.openChatScreen(context),
                    ),
                      )
                    
                      // Image in the bottom right corner
                      /*Padding(
                      padding: const EdgeInsets.only(right: 10, bottom: 10),
                      child: CustomImageView(
                         imagePath: ImageConstant.imgChatpot,
                         height: 80,
                         width: 80,
                         alignment: Alignment.bottomRight,
                      ),
                      ),*/
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



