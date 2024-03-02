import 'package:flutter/material.dart';
import 'package:gosi_hakathon_madmun_app/core/utils/image_constant.dart';
import 'package:gosi_hakathon_madmun_app/theme/theme_helper.dart';
import 'package:gosi_hakathon_madmun_app/view/home_page.dart';
import 'package:gosi_hakathon_madmun_app/view/saving_screen.dart';
import 'package:gosi_hakathon_madmun_app/widgets/custom_list_item.dart';

class CustomSideMenu extends StatelessWidget {

  const CustomSideMenu({
    Key? key,
  }) : super(key: key);

  @override
Widget build(BuildContext context) {
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
                CustomListItem(
                  title: "الرئيسية",
                  iconPath: ImageConstant.imageHomeIcon,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                ),
                CustomListItem(
                  title: "مدخراتي",
                  iconPath: ImageConstant.imageEdikharIcon,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SavingScreen(),
                      ),
                    );
                  },
                ),
                CustomListItem(
                  title: "استثماراتي",
                  iconPath: ImageConstant.imageEstithmarIcon,
                  onTap: () {
                    Navigator.pop(context); // Close drawer
                  },
                ),
                CustomListItem(
                  title: "دليلك",
                  iconPath: ImageConstant.imageDocumentIcon,
                  onTap: () {
                    Navigator.pop(context); // Close drawer
                  },
                ),
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
}

