import 'package:brt_app/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class RouteTextWidget extends StatelessWidget {
  const RouteTextWidget({Key? key, required this.ticket}) : super(key: key);
  final Map<String, dynamic> ticket;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: AppLayout.getHeight(14)),
      child: Column(
        children: [
          Gap(
            AppLayout.getHeight(25),
          ),
          Container(
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius:
                  BorderRadius.all(Radius.circular(AppLayout.getHeight(21))),
            ),
            padding: EdgeInsets.all(AppLayout.getHeight(20)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: Styles.headLine3.copyWith(
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
                      ticket['to']['code'],
                      style: Styles.headLine3.copyWith(
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
                        ticket['from']['name'],
                        style: Styles.headLine4
                            .copyWith(color: Styles.secondaryColor),
                      ),
                    ),
                    Text(
                      '22 MIN',
                      style: Styles.headLine4
                          .copyWith(color: Styles.secondaryColor),
                    ),
                    SizedBox(
                      // width: 100,
                      width: AppLayout.getWidth(100),
                      child: Text(
                        ticket['to']['name'],
                        textAlign: TextAlign.end,
                        style: Styles.headLine4
                            .copyWith(color: Styles.secondaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
