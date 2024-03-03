import 'package:flutter/material.dart';
import 'package:gosi_hakathon_madmun_app/core/app_export.dart';
import 'package:gosi_hakathon_madmun_app/view/home_page.dart';
import 'package:gosi_hakathon_madmun_app/widgets/custom_drop_down.dart';
import 'package:gosi_hakathon_madmun_app/widgets/custom_text_form_field.dart';
import 'package:gosi_hakathon_madmun_app/widgets/custom_elevated_button.dart';

class Estithmar extends StatelessWidget {
//  Estithmar({Key? key}) : super(key: key);

  static List<String> dropdownItemList = [
    "شراء سيارة",
    "شراء منزل",
    "اخرى",
  ];

 static TextEditingController zipcodeController = TextEditingController();

 static List<String> dropdownItemList1 = [
    "المجال الصحي",
    "المجال التقني",
    "المجال الصناعي",
  ];

  static void openModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 34.h,
              vertical: 19.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 50.h,
                  child: Divider(),
                ),
                SizedBox(height: 26.v),
                _buildWidget(context),
                SizedBox(height: 20.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: Text(
                      "حدد الهدف من الاستثمار",
                      style: _tajawalTextStyle(),
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                CustomDropDown(
                  hintText: "اختر",
                  items: dropdownItemList,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(
                      8.h,
                      15.v,
                      30.h,
                      15.v,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 54.v,
                  ),
                  onChanged: (value) {},
                ),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "حدد المبلغ المستقطع من الشهر القادم",
                            style: _tajawalTextStyle(),
                          ),
                          TextSpan(
                            text: "*",
                            style: CustomTextStyles.titleSmallffbd2f2f,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 18.v),
                _buildTwo(context),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "حدد مجال الاستثمار",
                            style: _tajawalTextStyle(),
                          ),
                          TextSpan(
                            text: "*",
                            style: CustomTextStyles.titleSmallffbd2f2f,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                CustomDropDown(
                  hintText: "اختر",
                  items: dropdownItemList1,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(
                      8.h,
                      15.v,
                      30.h,
                      15.v,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 54.v,
                  ),
                  onChanged: (value) {},
                ),
                SizedBox(height: 37.v),
                CustomElevatedButton(
                  text: "استثمر",
                  buttonTextStyle:  _tajawalTextStyle2(),
                  height: 60,
                  width: 250 ,
                  
                  margin: EdgeInsets.symmetric(horizontal: 3.h),
                  
                 onPressed: () => HomePage(),
                ),
                SizedBox(height: 30.v),
              ],
            ),
          ),
        );
      },
    );
  }

  static Widget _buildWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3.h),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillTealC.copyWith(
        borderRadius: BorderRadiusStyle1.roundedBorder13,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 4.v,
            ),
            child: Text(
              "الحد المسموح للاستثمار 20000 ريال",
              style: theme.textTheme.labelLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVideoCamera,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 5.h,
              bottom: 1.v,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 1.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 72.h,
            padding: EdgeInsets.symmetric(vertical: 14.v),
            decoration: AppDecoration.outlinePrimary.copyWith(
              borderRadius: BorderRadiusStyle1.roundedBorder13,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "10",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "%",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          CustomTextFormField(
            width: 219.h,
            controller: zipcodeController,
            hintText: "20000",
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: GestureDetector(
                  onTap: () {
                    openModalBottomSheet(context);
                  },
                  child: Container(
                    height: 453.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: appTheme.black900.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

    static TextStyle _tajawalTextStyle() {
    return const TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'TajawalBold',
      color: Color.fromARGB(255, 0, 0, 0)
    );
  }

      static TextStyle _tajawalTextStyle2() {
    return const TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'TajawalBold',
      color: Color.fromARGB(255, 255, 255, 255)
    );
  }
}
