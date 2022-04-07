import 'package:flutter/material.dart';
import 'package:weather_app_test/src/screens/get_locations/location_screen.dart';
import 'package:weather_app_test/src/screens/profile_screen.dart';
import 'package:weather_app_test/src/screens/support_screen.dart';
import 'package:weather_app_test/src/utils/bottom_navbar_util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    this.initialTabIndex = HomeScreenState.homeTabIndex,
  }) : super(key: key);
  final int initialTabIndex;

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  static const homeTabIndex = 0;
  static const opsTabIndex = 1;
  static const jobsTabIndex = 2;
  int _currentTabIndex = 1;
  final List<Widget> _screens = [
    const ProfileScreen(),
    const LocationScreen(),
    const SupportScreen(),
  ];

  @override
  void initState() {
    _currentTabIndex = widget.initialTabIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbarUtil.getBottomNavbar(
        _currentTabIndex,
        (val) => setState(() => _currentTabIndex = val),
      ),
      body: _screens[_currentTabIndex],
    );
  }
}
