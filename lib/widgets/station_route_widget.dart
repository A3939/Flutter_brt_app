import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class StationWidget extends StatelessWidget {
  const StationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius:
            BorderRadius.all(Radius.circular(AppLayout.getHeight(20))),
      ),
      margin: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(30), vertical: AppLayout.getWidth(15)),
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Styles.secondaryColor,
              borderRadius:
                  BorderRadius.all(Radius.circular(AppLayout.getHeight(50))),
            ),
            padding: EdgeInsets.all(AppLayout.getHeight(20)),
            child: Icon(
              Icons.local_taxi_rounded,
              color: Styles.primaryColor,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Styles.primaryColor,
            ),
            padding: EdgeInsets.all(AppLayout.getHeight(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Himatala",
                  style: Styles.headLine2.copyWith(
                    color: Styles.secondaryColor,
                  ),
                ),
                const Gap(7),
                Text(
                  "Himatala",
                  style:
                      Styles.headLine4.copyWith(color: Styles.secondaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
