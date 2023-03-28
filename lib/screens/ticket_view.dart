import 'package:brt_app/utils/app_layout.dart';
import 'package:brt_app/utils/app_styles.dart';
import 'package:brt_app/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.9,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "3D",
                            style: Styles.headLine2.copyWith(
                              color: Styles.secondaryColor,
                            ),
                          ),
                          Text(
                            "Maninagar - Chandkheda Gam",
                            style: Styles.headLine3.copyWith(
                              color: Styles.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.currency_rupee_rounded,
                            color: Styles.secondaryColor,
                          ),
                          Text(
                            "15",
                            style: Styles.headLine2,
                          ),
                        ],
                      )
                    ],
                  ),
                  const Gap(25),
                  Row(
                    children: List.generate(
                        550 ~/ 8,
                        (index) => Expanded(
                              child: Container(
                                color: index % 2 == 0
                                    ? Styles.secondaryColor
                                    : Styles.primaryColor,
                                height: 2,
                              ),
                            )),
                  ),
                  const Gap(30),
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
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
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
                          style: Styles.headLine4
                              .copyWith(color: Styles.secondaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
