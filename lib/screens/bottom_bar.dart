import 'package:brt_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOption = <Widget>[
    HomeScreen(),
    const Text("Like"),
    const Text("Search"),
    const Text("Setting"),
    const Text("Person"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOption[_selectedIndex]),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 24,
          ),
          decoration: const BoxDecoration(
            color: Color(0xff1C203D),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: GNav(
            backgroundColor: const Color(0xff1C203D),
            color: const Color(0xFFF4FDFC),
            activeColor: const Color(0xff1C203D),
            tabBackgroundColor: const Color(0xFFF4FDFC),
            gap: 8,
            onTabChange: (index) {
              _onItemTapped(index);
            },
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Setting',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
