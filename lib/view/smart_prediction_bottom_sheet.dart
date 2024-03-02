import 'package:flutter/material.dart';

class SmartPredictionBottomSheet extends StatelessWidget {
  static void smartPredictionBottomSheetDialog(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                      'بناء على مصروفاتك الشهرية أنت مؤهل للخطة التالية',
                      style: _tajawalTextStyle()),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(3.0),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/saving_icon.png', height: 50),
                      SizedBox(width: 10),
                      const Text(
                        'الإدخار',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'TajawalBold',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: _listTileBoxDecoration(),
                      child: ListTile(
                        leading: Image.asset('assets/images/moneys_icon.png'),
                        title: Text(
                          'المبلغ المقترح',
                          style: _tajawalTextStyle(),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '2000 - %10',
                              style: _tajawalTextStyle2(),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'شهريًا',
                              style: _tajawalTextStyle2(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      decoration: _listTileBoxDecoration(),
                      child: ListTile(
                        leading: Image.asset('assets/images/target_icon.png'),
                        title: Text(
                          'الهدف',
                          style: _tajawalTextStyle(),
                        ),
                        trailing: Text(
                          'أموال طوارئ 48,000 ريال',
                          style: _tajawalTextStyle2(),
                        ),
                      ),
                    ),
                    SizedBox(height: 6), // Spacing between tiles
                    Container(
                      decoration: _listTileBoxDecoration(),
                      child: ListTile(
                        leading: Image.asset('assets/images/period_icon.png'),
                        title: Text(
                          'المدة',
                          style: _tajawalTextStyle(),
                        ),
                        trailing: Text(
                          'سنتين',
                          style: _tajawalTextStyle2(),
                        ),
                      ),
                    ),
                    SizedBox(height: 6), // Spacing between tiles
                    Container(
                      decoration: _listTileBoxDecoration(),
                      child: ListTile(
                        leading: Image.asset('assets/images/reason_icon.png'),
                        title: Text(
                          'السبب',
                          style: _tajawalTextStyle(),
                        ),
                        subtitle: Text(
                          'يوضح تحليلنا أن لديك أموال فائضة في حسابك الجاري',
                          style: _tajawalTextStyle2(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding:
                          EdgeInsets.all(5.0), // Add padding around the button
                      child: SizedBox(
                        width: 300.0,
                        height: 50.0, // Set a fixed height for the button
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFF183630),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Set the border radius
                            ),
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('إدخر', style: _tajawalTextStyle3()),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static BoxDecoration _listTileBoxDecoration() {
    return BoxDecoration(
      color: Color.fromARGB(222, 245, 247, 245), // Tile background color
      borderRadius: BorderRadius.circular(8.0),
    );
  }

  static TextStyle _tajawalTextStyle() {
    return const TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'TajawalBold',
    );
  }

  static TextStyle _tajawalTextStyle2() {
    return const TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'TajawalBold',
        color: Color(0XFF183630));
  }

  static TextStyle _tajawalTextStyle3() {
    return const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'TajawalBold',
        color: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Bottom Sheet', style: _tajawalTextStyle()),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => smartPredictionBottomSheetDialog(context),
          child: Text('Show Bottom Sheet', style: _tajawalTextStyle()),
        ),
      ),
    );
  }
}
