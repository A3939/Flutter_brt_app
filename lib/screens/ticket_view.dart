import 'package:brt_app/utils/app_layout.dart';
import 'package:brt_app/utils/app_styles.dart';
import 'package:brt_app/widgets/thick_container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              padding: const EdgeInsets.all(20),
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
                  const Gap(20),
                  Row(
                    children: [
                      Text(
                        "NYC",
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
                              height: 24,
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
                        "LDN",
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
                        width: 100,
                        child: Text(
                          'New-York',
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
                        width: 100,
                        child: Text(
                          'London',
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
