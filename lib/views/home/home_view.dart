import 'package:flutter/material.dart';
import 'package:forge/widgets/text/appBar_title_view.dart';
import 'package:forge/widgets/card/report_card.dart';
import 'package:forge/widgets/card/workout_card.dart';
import 'package:forge/widgets/text/title_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          SizedBox(height: 16),
          AppbarTitleView(title: 'Dashboard'),
          SizedBox(height: 16),
          TitleText(title: 'Today\'s Report'),
          SizedBox(height: 16),
          ReportCard(),
          SizedBox(height: 16),
          TitleText(title: 'My Workouts'),
          SizedBox(height: 8.0),
          WorkoutCardView(),
          WorkoutCardView(),
          WorkoutCardView(),
        ],
      ),
    );
  }
}
