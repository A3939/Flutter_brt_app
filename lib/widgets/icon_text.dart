import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  const AppIconText({Key? key, required this.icon, required this.text})
      : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getWidth(15),
        horizontal: AppLayout.getWidth(12),
      ),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(
          AppLayout.getWidth(10),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Icon(
                icon,
                color: Styles.secondaryColor,
              ),
              Gap(
                AppLayout.getWidth(20),
              ),
              // Text(
              //   text,
              //   style: Styles.textStyle,
              // ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: text,
                    border: InputBorder.none,
                    // hintStyle: Styles.headLine3.copyWith(fontSize: 18),
                  ),
                  style: const TextStyle(fontSize: 20),
                  cursorColor: Styles.secondaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
