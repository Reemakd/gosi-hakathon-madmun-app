import 'package:flutter/material.dart';
import 'package:gosi_hakathon_madmun_app/view/smart_prediction_bottom_sheet.dart';

class SmartPredictionDialog {
  static void showSmartPredictionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          title: const Text(
            'هل تود السماح لمضمون بالوصول لكشف حسابك البنكي؟',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'TajawalBold',
            ),
          ),
          actions: [
            _actionButton(context, 'نعم', Color(0XFF183630), Colors.white),
            _actionButton(context, 'لا', Colors.white, Color(0xff469c8a), true),
          ],
          actionsAlignment: MainAxisAlignment.spaceEvenly,
        );
      },
    );
  }

  static Widget _actionButton(BuildContext context, String text, Color bgColor, Color textColor, [bool isOutline = false]) {
    return SizedBox(
      width: 110,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: isOutline ? BorderSide(color: textColor, width: 3) : BorderSide.none,
          ),
        ),
        onPressed: () {
          if (text == 'نعم') {
            // Pop the current dialog
            Navigator.of(context).pop();
           
            SmartPredictionBottomSheet.smartPredictionBottomSheetDialog(context);

          } else {
            Navigator.of(context).pop();
          }
        },

        child: Text(text,
          style: TextStyle(
            color: textColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'TajawalBold',
          ),
        ),
      ),
    );
  }
}
