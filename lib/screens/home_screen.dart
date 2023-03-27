import 'package:brt_app/screens/ticket_view.dart';
import 'package:brt_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const Gap(100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Book Tickets",
                          style: Styles.headLine,
                        ),
                        const Gap(5),
                        Text(
                          "Find your BRT",
                          style: Styles.headLine3,
                        ),
                      ],
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/profile.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Frequently Use Route",
                      style: Styles.headLine2,
                    ),
                    Text(
                      "View all",
                      style: Styles.textStyle
                          .copyWith(color: Styles.secondaryColor),
                    )
                  ],
                )
              ],
            ),
          ),
          const Gap(30),
          TicketView(),
        ],
      ),
    );
  }
}
