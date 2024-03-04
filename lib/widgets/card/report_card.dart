import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forge/core/extensions/text_styles.dart';
import 'package:forge/core/extensions/theme_colors.dart';

class ReportCard extends StatelessWidget {
  const ReportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0.5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/icons/barbell.svg",
                    width: 24,
                    height: 24,
                    color: context.primary,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '12',
                    style: context.heading,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'workouts',
                    style: context.description,
                  ),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/icons/watch.svg",
                    width: 24,
                    height: 24,
                    color: Colors.green,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '60',
                    style: context.heading,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'minutes',
                    style: context.description,
                  ),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/icons/Fire.svg",
                    width: 24,
                    height: 24,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '1200',
                    style: context.heading,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'kcal',
                    style: context.description,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
