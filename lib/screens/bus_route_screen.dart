import 'package:brt_app/widgets/station_route_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/thick_container.dart';

class BusRouteScreen extends StatelessWidget {
  const BusRouteScreen({Key? key, required this.ticket}) : super(key: key);
  final Map<String, dynamic> ticket;
  @override
  Widget build(BuildContext context) {
    TimeOfDay _cuuTime = TimeOfDay.now();

    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: Container(
          color: Styles.secondaryColor,
          // height: AppLayout.getHeight(180),
          // padding: EdgeInsets.only(top: AppLayout.getHeight(50)),
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/images/promotions_1.png"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: AppBar(
            iconTheme: IconThemeData(
              color: Styles.secondaryColor,
              size: 30,
            ),
            flexibleSpace: const Image(
              image: AssetImage('assets/images/bus_route_bg.png'),
              fit: BoxFit.cover,
            ),
            elevation: 0.0,
            toolbarHeight: 180,
            // backgroundColor: Styles.secondaryColor,
            backgroundColor: Color.fromARGB(0, 0, 0, 0),
            leadingWidth: AppLayout.getWidth(20),
            centerTitle: true,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Styles.primaryColor,
            ),
            padding: EdgeInsets.all(AppLayout.getHeight(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ticket["number"],
                      style: Styles.headLine,
                    ),
                    Text(
                      "\$15",
                      style: Styles.headLine2,
                    )
                  ],
                ),
                const Gap(10),
                Row(
                  children: [
                    Text(
                      ticket['from']['name'] + "-" + ticket['to']['name'],
                      style: Styles.headLine2,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                const Gap(40),
                Row(
                  children: [
                    Text(
                      "02:00 PM",
                      style: Styles.headLine2.copyWith(
                        color: Styles.secondaryColor,
                      ),
                    ),
                    Expanded(child: Container()),
                    ThickContainer(),
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                print(constraints.constrainWidth());
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Styles.secondaryColor),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.local_taxi_rounded,
                              color: Styles.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ThickContainer(),
                    Expanded(child: Container()),
                    Text(
                      "01:40 PM",
                      style: Styles.headLine2.copyWith(
                        color: Styles.secondaryColor,
                      ),
                    )
                  ],
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      // width: 100,
                      width: AppLayout.getWidth(100),
                      child: Text(
                        ticket['from']['code'],
                        style:
                            Styles.headLine4.copyWith(color: Styles.tagColor),
                      ),
                    ),
                    Text(
                      '01H 22M',
                      style: Styles.headLine4
                          .copyWith(color: Styles.secondaryColor),
                    ),
                    SizedBox(
                      // width: 100,
                      width: AppLayout.getWidth(100),
                      child: Text(
                        ticket['to']['name'],
                        textAlign: TextAlign.end,
                        style:
                            Styles.headLine4.copyWith(color: Styles.tagColor),
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                Row(
                  children: [
                    Text(
                      "0 Transfer",
                      style: Styles.textStyle.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                const Gap(30),
              ],
            ),
          ),
          const Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            // padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: <Widget>[
                for (var name in ticket["route"])
                  StationWidget(
                    station: name,
                    time: _cuuTime,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
