import 'package:flutter/material.dart';
import 'package:forge/widgets/text/appbar_title_view.dart';
import 'package:forge/widgets/card/report_card.dart';
import 'package:forge/widgets/text/title_text.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 16),
          const AppbarTitleView(title: 'Profile'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.contain,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                const Column(
                  children: [
                    TitleText(title: 'Chris Hemsworth'),
                    Text('Member joined 2 Jan 2021',
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const TitleText(title: 'Today\'s Report'),
          const SizedBox(height: 16),
          const ReportCard(),
        ],
      ),
    );
  }
}
