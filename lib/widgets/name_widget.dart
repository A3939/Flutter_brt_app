import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

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
          name,
          style: Styles.headLine2.copyWith(
            color: Styles.primaryColor,
          ),
        ),
      ),
    );
  }
}
