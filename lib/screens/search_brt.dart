import 'dart:convert';

import 'package:brt_app/screens/bus_detail_screen.dart';
import 'package:brt_app/utils/app_info_list.dart';
import 'package:brt_app/utils/app_layout.dart';
import 'package:brt_app/utils/app_styles.dart';
import 'package:brt_app/widgets/double_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:searchfield/searchfield.dart';
import 'package:substring_highlight/substring_highlight.dart';

class SearchBRT extends StatefulWidget {
  const SearchBRT({super.key});

  @override
  State<SearchBRT> createState() => _SearchBRTState();
}

class _SearchBRTState extends State<SearchBRT> {
  bool isLoading = false;
  late List<String> autoComplateData;
  late TextEditingController start_station;
  late TextEditingController end_station;
  Future fetchAutoCompleteData() async {
    setState(() {
      isLoading = true;
    });

    final String stringDate =
        await rootBundle.loadString("assets/images/data.json");

    final List<dynamic> json = jsonDecode(stringDate);

    final List<String> jsonStringData = json.cast<String>();

    setState(() {
      isLoading = false;
      autoComplateData = jsonStringData;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchAutoCompleteData();
  }

  @override
  Widget build(BuildContext context) {
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(10),
                horizontal: AppLayout.getWidth(10),
              ),
              decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(
                  AppLayout.getWidth(10),
                ),
              ),
              child: Column(
                children: [
                  Autocomplete(
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      if (textEditingValue.text.isEmpty) {
                        return const Iterable<String>.empty();
                      } else {
                        return autoComplateData.where((word) => word
                            .toLowerCase()
                            .contains(textEditingValue.text.toLowerCase()));
                      }
                    },
                    optionsViewBuilder: (context, onSelected, options) {
                      return Material(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getWidth(10),
                        ),
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            final option = options.elementAt(index);
                            return ListTile(
                              title: SubstringHighlight(
                                text: option.toString(),
                                term: start_station.text,
                                textStyleHighlight: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1C203D),
                                ),
                              ),
                              onTap: () {
                                onSelected(option.toString());
                              },
                            );
                          },
                          separatorBuilder: (context, index) => Divider(),
                          itemCount: options.length,
                        ),
                      );
                    },
                    onSelected: (selectedString) {
                      final scaffold = ScaffoldMessenger.of(context);
                      scaffold.showSnackBar(
                        SnackBar(
                          content: Text(selectedString),
                          action: SnackBarAction(
                              label: 'OK',
                              onPressed: scaffold.hideCurrentSnackBar),
                        ),
                      );
                      FocusScope.of(context).unfocus();
                    },
                    fieldViewBuilder:
                        (context, controller, focusNode, onEditingComplete) {
                      this.start_station = controller;
                      return TextField(
                        style: TextStyle(fontSize: 18),
                        controller: controller,
                        focusNode: focusNode,
                        onEditingComplete: onEditingComplete,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Start Destination",
                          prefixIcon: Icon(Icons.bus_alert_rounded),
                          prefixIconColor: Color(0xff1C203D),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(10),
                horizontal: AppLayout.getWidth(10),
              ),
              decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(
                  AppLayout.getWidth(10),
                ),
              ),
              child: Column(
                children: [
                  Autocomplete(
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      if (textEditingValue.text.isEmpty) {
                        return const Iterable<String>.empty();
                      } else {
                        return autoComplateData.where((word) => word
                            .toLowerCase()
                            .contains(textEditingValue.text.toLowerCase()));
                      }
                    },
                    optionsViewBuilder: (context, onSelected, options) {
                      return Material(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getWidth(10),
                        ),
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            final option = options.elementAt(index);
                            return ListTile(
                              title: SubstringHighlight(
                                text: option.toString(),
                                term: end_station.text,
                                textStyleHighlight: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1C203D),
                                ),
                              ),
                              onTap: () {
                                onSelected(option.toString());
                              },
                            );
                          },
                          separatorBuilder: (context, index) => Divider(),
                          itemCount: options.length,
                        ),
                      );
                    },
                    onSelected: (selectedString) {
                      final scaffold = ScaffoldMessenger.of(context);
                      scaffold.showSnackBar(
                        SnackBar(
                          content: Text(selectedString),
                          action: SnackBarAction(
                              label: 'OK',
                              onPressed: scaffold.hideCurrentSnackBar),
                        ),
                      );
                      FocusScope.of(context).unfocus();
                    },
                    fieldViewBuilder:
                        (context, controller, focusNode, onEditingComplete) {
                      this.end_station = controller;
                      return TextField(
                        style: TextStyle(fontSize: 18),
                        controller: controller,
                        focusNode: focusNode,
                        onEditingComplete: onEditingComplete,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "End Destination",
                          prefixIcon: Icon(Icons.bus_alert_rounded),
                          prefixIconColor: Color(0xff1C203D),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Gap(
            AppLayout.getHeight(25),
          ),
          MaterialButton(
            child: Container(
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
                child: Text(
                  'Find Route',
                  style: TextStyle(
                    color: Styles.primaryColor,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            onPressed: () {
              final scaffold = ScaffoldMessenger.of(context);
              scaffold.showSnackBar(
                SnackBar(
                  content: Text(start_station.text + " to " + end_station.text),
                  action: SnackBarAction(
                      label: 'OK', onPressed: scaffold.hideCurrentSnackBar),
                ),
              );
              FocusScope.of(context).unfocus();
              List<Map<String, dynamic>> data =
                  FindBusDetails(start_station.text, end_station.text);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BusDetails(
                    end_point: end_station,
                    start_point: start_station,
                    bus_list: data,
                  ),
                ),
              );
            },
          ),
          Gap(
            AppLayout.getHeight(25),
          ),
          const AppDoubleTextWidget(
            bigText: "Recent searches",
            smallText: "",
          ),

          // SingleChildScrollView(
          //   scrollDirection: Axis.vertical,
          //   // padding: const EdgeInsets.only(left: 20),
          //   child: Column(
          //     children: ticketList
          //         .map(
          //           (singleTicket) => RouteTextWidget(
          //             ticket: singleTicket,
          //           ),
          //         )
          //         .toList(),
          //   ),
          // ),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> FindBusDetails(start_point, end_point) {
  var bus_list = [];
  List<Map<String, dynamic>> customer_bus_list = [];
  var start_index;

  for (var bus in ticketList) {
    for (var route in bus["route"]) {
      if (route == start_point) {
        customer_bus_list.add(bus);
        break;
      }
    }
  }
  print(customer_bus_list);
  return customer_bus_list;
}
