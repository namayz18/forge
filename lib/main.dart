import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forge/core/extensions/theme_colors.dart';
import 'package:forge/core/themes/app_theme.dart';
import 'package:forge/views/home/home_view.dart';
import 'package:forge/views/profile/profile_view.dart';
import 'package:forge/views/statistics/stats_view.dart';
import 'package:forge/views/workout/workout_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forge',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: const MainView(),
    );
  }
}

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(
          index: _selectedIndex,
          children: const [
            HomeView(),
            WorkoutView(),
            StatsView(),
            ProfileView(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/apps.svg",
              width: 24,
              height: 24,
              color: Colors.grey,
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/apps.svg",
              width: 24,
              height: 24,
              color: context.primary,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/barbell.svg",
              width: 24,
              height: 24,
              color: Colors.grey,
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/barbell.svg",
              width: 24,
              height: 24,
              color: context.primary,
            ),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/graph_bar.svg",
              width: 24,
              height: 24,
              color: Colors.grey,
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/graph_bar.svg",
              width: 24,
              height: 24,
              color: context.primary,
            ),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Profile.svg",
              width: 24,
              height: 24,
              color: Colors.grey,
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/Profile.svg",
              width: 24,
              height: 24,
              color: context.primary,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: context.primary,
        unselectedItemColor: Colors.grey[600],
        unselectedLabelStyle: TextStyle(color: Colors.grey[600]),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedFontSize: 12,
        unselectedFontSize: 12,
      ),
    );
  }
}
