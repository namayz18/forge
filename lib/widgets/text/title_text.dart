import 'package:flutter/material.dart';
import 'package:forge/core/extensions/text_styles.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: context.heading,
      ),
    );
  }
}
