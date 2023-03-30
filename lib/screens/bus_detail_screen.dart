import 'package:brt_app/screens/ticket_view.dart';
import 'package:brt_app/utils/app_styles.dart';
import 'package:brt_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../utils/app_layout.dart';

class BusDetails extends StatelessWidget {
  const BusDetails(
      {Key? key, required this.start_point, required this.end_point})
      : super(key: key);
  final TextEditingController start_point;
  final TextEditingController end_point;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: Container(
          color: Styles.secondaryColor,
          // height: AppLayout.getHeight(180),
          // padding: EdgeInsets.only(top: AppLayout.getHeight(50)),
          child: AppBar(
            elevation: 0.0,
            toolbarHeight: 180,
            // backgroundColor: Styles.secondaryColor,
            backgroundColor: Color.fromARGB(0, 0, 0, 0),
            leadingWidth: AppLayout.getWidth(20),
            centerTitle: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  // "Himatlal Park to \nRanip Cross Road",
                  start_point.text + " to \n" + end_point.text,
                  style: Styles.headLine3.copyWith(
                    color: Styles.primaryColor,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(20),
                Container(
                  width: AppLayout.getWidth(280),
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getWidth(10),
                    horizontal: AppLayout.getWidth(10),
                  ),
                  decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getWidth(25),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Search Results",
                      style: Styles.headLine3.copyWith(
                        color: Styles.secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(25),
              vertical: AppLayout.getWidth(25),
            ),
            child: Column(
              children: ticketList
                  .map(
                    (singleTicket) => TicketView(
                      ticket: singleTicket,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
