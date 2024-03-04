import 'package:flutter/material.dart';
import 'package:forge/widgets/text/appbar_title_view.dart';
import 'package:forge/widgets/text/title_text.dart';
import 'package:forge/widgets/textfield/search_textfield.dart';
import 'package:forge/widgets/card/workout_card.dart';

class WorkoutView extends StatefulWidget {
  const WorkoutView({Key? key}) : super(key: key);

  @override
  State<WorkoutView> createState() => _WorkoutViewState();
}

class _WorkoutViewState extends State<WorkoutView> {
  final TextEditingController controller = TextEditingController();
  bool isEmpty = false;
  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    controller.addListener(_printLatestValue);
  }

  void _printLatestValue() {
    setState(() {});
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 16),
          const AppbarTitleView(title: 'Workouts'),
          const SizedBox(height: 16),
          SearchTextField(controller: controller),
          const SizedBox(height: 16),
          const TitleText(title: 'Beginner'),
          const SizedBox(height: 16),
          const WorkoutCardView(),
          const WorkoutCardView(),
          const SizedBox(height: 16),
          const TitleText(title: 'Challenges'),
          const SizedBox(height: 16),
          const WorkoutCardView(),
        ],
      ),
    );
  }
}
