import 'package:brt_app/screens/promotions_screen.dart';
import 'package:brt_app/screens/ticket_view.dart';
import 'package:brt_app/utils/app_info_list.dart';
import 'package:brt_app/utils/app_styles.dart';
import 'package:brt_app/widgets/double_text_widget.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 30),
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
                          "Aldairtiyna",
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
                const AppDoubleTextWidget(
                  bigText: "Most Search",
                  smallText: "View all",
                ),
              ],
            ),
          ),
          const Gap(30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: ticketList
                    .map(
                      (singleTicket) => TicketView(
                        ticket: singleTicket,
                      ),
                    )
                    .toList()),
          ),
          const Gap(50),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: const AppDoubleTextWidget(
                bigText: "Promotions",
                smallText: "",
              )),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: const [
                PromotionScreen(),
                PromotionScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
