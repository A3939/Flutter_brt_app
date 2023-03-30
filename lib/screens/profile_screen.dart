import 'dart:math';

import 'package:brt_app/utils/app_layout.dart';
import 'package:brt_app/utils/app_styles.dart';
import 'package:brt_app/widgets/about_list_widget.dart';
import 'package:brt_app/widgets/button_widget.dart';
import 'package:brt_app/widgets/name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Column(
        children: [
          const Gap(50),
          Container(
            margin: EdgeInsets.all(
              AppLayout.getWidth(20),
            ),
            child: const NameWidget(name: "Developer"),
          ),
          const Gap(30),
          Container(
            height: 115,
            width: 115,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/profile.png"),
              ),
            ),
          ),
          const Gap(30),
          Container(
            margin: EdgeInsets.all(
              AppLayout.getWidth(20),
            ),
            child: Column(
              children: const [
                AboutListWidget(
                  icon: Icons.person_2_rounded,
                  text: "Aditya Patel",
                ),
                const Gap(20),
                AboutListWidget(
                  icon: Icons.local_activity,
                  text: "Full Stack",
                ),
                const Gap(20),
                AboutListWidget(
                  icon: Icons.local_library_rounded,
                  text: "Bachelor of Engineering",
                ),
                const Gap(20),
                AboutListWidget(
                  icon: Icons.local_phone_rounded,
                  text: "+91 9427303939",
                ),
                const Gap(20),
                AboutListWidget(
                  icon: Icons.email_rounded,
                  text: "adityagpatel59@gmail.com",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
