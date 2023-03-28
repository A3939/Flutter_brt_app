import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  const AppDoubleTextWidget(
      {Key? key, required this.bigText, required this.smallText})
      : super(key: key);
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLine2,
        ),
        Text(
          smallText,
          style: Styles.textStyle.copyWith(color: Styles.secondaryColor),
        )
      ],
    );
  }
}
