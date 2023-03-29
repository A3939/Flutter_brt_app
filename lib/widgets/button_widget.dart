import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class ButtonWidget extends StatelessWidget {
  // const ButtonWidget(
  //     {Key? key, required this.start_point, required this.end_point})
  //     : super(key: key);
  // final TextEditingController start_point;
  // final TextEditingController end_point;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getWidth(18),
        horizontal: AppLayout.getWidth(15),
      ),
      decoration: BoxDecoration(
        color: Styles.secondaryColor,
        borderRadius: BorderRadius.circular(
          AppLayout.getWidth(10),
        ),
      ),
      child: Center(
        child: Text(
          "Find Bus",
          style: Styles.textStyle.copyWith(
            color: Styles.primaryColor,
          ),
        ),
      ),
    );
  }
}
