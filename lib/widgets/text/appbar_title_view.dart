import 'package:flutter/material.dart';
import 'package:forge/core/extensions/text_styles.dart';

class AppbarTitleView extends StatelessWidget {
  const AppbarTitleView({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: context.display,
          ),
        ],
      ),
    );
  }
}
