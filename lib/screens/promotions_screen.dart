import 'package:brt_app/utils/app_layout.dart';
import 'package:brt_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.8,
      // height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      // decoration: BoxDecoration(color: Styles.primaryColor),
      child: Column(
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/promotions_1.png",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
