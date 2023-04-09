import 'package:brt_app/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class AboutListWidget extends StatelessWidget {
  const AboutListWidget({Key? key, required this.icon, required this.text})
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
                AppLayout.getWidth(15),
              ),
              // Text(
              //   text,
              //   style: Styles.textStyle,
              // ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
