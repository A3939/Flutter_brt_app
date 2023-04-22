import 'package:brt_app/screens/bus_detail_screen.dart';
import 'package:brt_app/utils/app_info_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class RouteTextWidget extends StatelessWidget {
  const RouteTextWidget({Key? key, required this.ticket}) : super(key: key);
  final Map<dynamic, dynamic> ticket;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        List<Map<String, dynamic>> data =
            FindBusDetails(ticket['start'], ticket['end']);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BusDetails(
              end_point: ticket['end'],
              start_point: ticket['start'],
              bus_list: data,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(14)),
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
                        // ticket['from']['code'],
                        ticket["start"],
                        // "data",
                        style: Styles.headLine3.copyWith(
                          color: Styles.secondaryColor,
                        ),
                        softWrap: true,
                      ),
                      Expanded(child: Container()),
                      // ThickContainer(),
                      // Expanded(
                      //   child: Stack(
                      //     children: [
                      //       SizedBox(
                      //         height: AppLayout.getHeight(24),
                      //         // width: AppLayout.getWidth(50),
                      //         child: LayoutBuilder(
                      //           builder: (BuildContext context,
                      //               BoxConstraints constraints) {
                      //             print(constraints.constrainWidth());
                      //             return Flex(
                      //               direction: Axis.horizontal,
                      //               mainAxisAlignment:
                      //                   MainAxisAlignment.spaceBetween,
                      //               mainAxisSize: MainAxisSize.max,
                      //               children: List.generate(
                      //                 (constraints.constrainWidth() / 6).floor(),
                      //                 (index) => SizedBox(
                      //                   width: 3,
                      //                   height: 1,
                      //                   child: DecoratedBox(
                      //                     decoration: BoxDecoration(
                      //                         color: Styles.secondaryColor),
                      //                   ),
                      //                 ),
                      //               ),
                      //             );
                      //           },
                      //         ),
                      //       ),
                      //       Center(
                      //         child: Icon(
                      //           Icons.local_taxi_rounded,
                      //           color: Styles.secondaryColor,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // ThickContainer(),
                      Text(
                        // ticket['to']['code'],
                        // ticket["end"],
                        "to",
                        style: Styles.headLine3.copyWith(
                          color: Styles.secondaryColor,
                        ),
                        softWrap: true,
                      ),
                      Expanded(child: Container()),
                      Text(
                        // ticket['to']['code'],
                        ticket["end"],
                        // "data",
                        style: Styles.headLine3.copyWith(
                          color: Styles.secondaryColor,
                        ),
                        softWrap: true,
                      )
                    ],
                  ),
                  const Gap(10),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     SizedBox(
                  //       // width: 100,
                  //       width: AppLayout.getWidth(100),
                  //       child: Text(
                  //         // ticket['from']['name'],
                  //         "data",
                  //         style: Styles.headLine4
                  //             .copyWith(color: Styles.secondaryColor),
                  //       ),
                  //     ),
                  //     Text(
                  //       '22 MIN',
                  //       style: Styles.headLine4
                  //           .copyWith(color: Styles.secondaryColor),
                  //     ),
                  //     SizedBox(
                  //       // width: 100,
                  //       width: AppLayout.getWidth(100),
                  //       child: Text(
                  //         // ticket['to']['name'],
                  //         "data",
                  //         textAlign: TextAlign.end,
                  //         style: Styles.headLine4
                  //             .copyWith(color: Styles.secondaryColor),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> FindBusDetails(startPoint, endPoint) {
  var busList = [];
  List<Map<String, dynamic>> customerBusList = [];
  var startIndex;

  for (var bus in ticketList) {
    for (var route in bus["route"]) {
      if (route == startPoint) {
        customerBusList.add(bus);
        break;
      }
    }
  }
  return customerBusList;
}
