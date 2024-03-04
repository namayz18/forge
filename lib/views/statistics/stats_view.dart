import 'package:flutter/material.dart';
import 'package:forge/widgets/text/appbar_title_view.dart';
import 'package:forge/widgets/card/report_card.dart';
import 'package:forge/widgets/text/title_text.dart';

class StatsView extends StatefulWidget {
  const StatsView({Key? key}) : super(key: key);

  @override
  State<StatsView> createState() => _StatsViewState();
}

class _StatsViewState extends State<StatsView> {
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
        ],
      ),
    );
  }
}
