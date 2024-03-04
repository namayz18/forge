import 'package:flutter/material.dart';
import 'package:forge/core/extensions/text_styles.dart';
import 'package:forge/core/extensions/theme_colors.dart';
import 'package:forge/models/shift.dart';

class ShiftCardView extends StatelessWidget {
  const ShiftCardView({Key? key, required this.shift, required this.isMyShift})
      : super(key: key);
  final Shift shift;
  final bool isMyShift;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 0.5),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shift.name,
                        style: context.title,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        shift.address,
                        style: context.description,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 16,
                            color: context.primary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            shift.date,
                            textAlign: TextAlign.start,
                            style: context.description,
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 16,
                            color: context.primary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            shift.time,
                            textAlign: TextAlign.start,
                            style: context.description,
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.attach_money,
                            size: 16,
                            color: context.primary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            shift.payRate,
                            textAlign: TextAlign.start,
                            style: context.description,
                          ),
                        ],
                      ),
                    ],
                  ),
                  ShiftCardButton(shift: shift, isMyShift: isMyShift),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShiftCardButton extends StatelessWidget {
  const ShiftCardButton(
      {Key? key, required this.shift, required this.isMyShift})
      : super(key: key);
  final Shift shift;
  final bool isMyShift;

  @override
  Widget build(BuildContext context) {
    return isMyShift
        ? Text(
            shift.status,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: context.primary,
            ),
          )
        : Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: context.primary,
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Text(
              'Apply',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: context.onSecondary,
              ),
            ),
          );
  }
}
