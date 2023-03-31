import 'package:brt_app/screens/bus_detail_screen.dart';
import 'package:brt_app/utils/app_layout.dart';
import 'package:brt_app/utils/app_styles.dart';
import 'package:brt_app/widgets/route_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:searchfield/searchfield.dart';
import '../utils/app_info_list.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    var start_station = TextEditingController();
    var end_station = TextEditingController();

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(
            AppLayout.getHeight(40),
          ),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLine.copyWith(
              fontSize: AppLayout.getWidth(32),
            ),
          ),
          Gap(
            AppLayout.getHeight(20),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(50),
                ),
                color: Styles.primaryColor),
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            child: const Center(
              child: Text(
                "BRT Route Check",
              ),
            ),
          ),
          Gap(
            AppLayout.getHeight(25),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getWidth(15),
              horizontal: AppLayout.getWidth(12),
            ),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(10),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.flight_takeoff_rounded,
                      color: Styles.secondaryColor,
                    ),
                    Gap(
                      AppLayout.getWidth(20),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width *
                          AppLayout.getWidth(0.7),
                      child: SearchField(
                        controller: start_station,
                        searchInputDecoration: const InputDecoration(
                          hintText: "Start",
                          border: InputBorder.none,
                        ),
                        searchStyle: const TextStyle(fontSize: 20),
                        suggestions: station_List
                            .map(
                              (e) => SearchFieldListItem(
                                e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const AppIconText(
          //     icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(
            AppLayout.getHeight(25),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getWidth(15),
              horizontal: AppLayout.getWidth(12),
            ),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(10),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.flight_land_rounded,
                      color: Styles.secondaryColor,
                    ),
                    Gap(
                      AppLayout.getWidth(20),
                    ),
                    // Text(
                    //   text,
                    //   style: Styles.textStyle,
                    // ),
                    Container(
                      padding: EdgeInsets.only(left: AppLayout.getWidth(5)),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width *
                            AppLayout.getWidth(0.7),
                        child: SearchField(
                          controller: end_station,
                          searchInputDecoration: const InputDecoration(
                            hintText: "End",
                            border: InputBorder.none,
                          ),
                          searchStyle: const TextStyle(fontSize: 20),
                          suggestions: station_List
                              .map(
                                (e) => SearchFieldListItem(
                                  e,
                                  child: Text(e),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(
            AppLayout.getHeight(25),
          ),
          // Container(
          //   padding: EdgeInsets.symmetric(
          //     vertical: AppLayout.getWidth(18),
          //     horizontal: AppLayout.getWidth(15),
          //   ),
          //   decoration: BoxDecoration(
          //     color: Styles.secondaryColor,
          //     borderRadius: BorderRadius.circular(
          //       AppLayout.getWidth(10),
          //     ),
          //   ),
          //   child: Center(
          //     child: Text(
          //       "Find Bus",
          //       style: Styles.textStyle.copyWith(
          //         color: Styles.primaryColor,
          //       ),
          //     ),
          //   ),
          // ),
          // ButtonWidget(
          //   start_point: start_station,
          //   end_point: end_station,
          // ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getWidth(18),
              horizontal: AppLayout.getWidth(15),
            ),
            decoration: BoxDecoration(
              color: Styles.secondaryColor,
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(10),
              ),
            ),
            child: Center(
              child: MaterialButton(
                child: Text(
                  'Find Route',
                  style: TextStyle(
                    color: Styles.primaryColor,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BusDetails(
                        end_point: end_station,
                        start_point: start_station,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Gap(
            AppLayout.getHeight(25),
          ),
          const AppDoubleTextWidget(
            bigText: "Recent searches",
            smallText: "",
          ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: ticketList
                  .map(
                    (singleTicket) => RouteTextWidget(
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
