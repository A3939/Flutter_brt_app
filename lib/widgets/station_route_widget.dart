import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class StationWidget extends StatelessWidget {
  const StationWidget({Key? key, required this.station, required this.time})
      : super(key: key);
  final String station;
  final TimeOfDay time;
  // final String min;
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
            alignment: Alignment.center,
            padding: EdgeInsets.all(AppLayout.getHeight(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  station,
                  style: Styles.headLine3.copyWith(
                    color: Styles.secondaryColor,
                    fontSize: 14,
                  ),
                  softWrap: true,
                ),
                const Gap(7),
                Text(
                  time.toString(),
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
