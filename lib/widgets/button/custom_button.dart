import 'package:flutter/material.dart';
import 'package:forge/core/extensions/text_styles.dart';
import 'package:forge/core/extensions/theme_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final bool isPrimary;
  final VoidCallback? onPress;

  const CustomButton({
    Key? key,
    required this.title,
    this.isPrimary = true,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.grey,
          backgroundColor: isPrimary ? context.primary : context.onPrimary,
          textStyle: context.button,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: onPress,
        child: SizedBox(
          height: 40,
          child: Center(
            child: Text(
              title,
              style: isPrimary ? context.button : context.textButton,
            ),
          ),
        ),
      ),
    );
  }
}
