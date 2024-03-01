import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final void Function()? onTap;

  const CustomListItem({
    Key? key,
    required this.title,
    required this.iconPath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: Color.fromARGB(255, 215, 238, 213).withOpacity(0.3), blurRadius: 3, offset: Offset(0, 2))],
        ),
        child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items to the right and left
            mainAxisSize: MainAxisSize.max, // Take up full width
            children: [
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.end, // Align text to the end (right)
                  style: TextStyle(
                    fontFamily: 'TajawalBold',
                    fontSize: 20, // Adjust text size as needed
                  ),
                ),
              ),
              SizedBox(width: 10), 
              Image.asset(
                iconPath,
                height: 30,
                width: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
