import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forge/core/extensions/text_styles.dart';
import 'package:forge/core/extensions/theme_colors.dart';

class CustomIconTextButton extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback? onPress;

  const CustomIconTextButton(
      {Key? key, required this.icon, required this.title, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.grey,
          backgroundColor: context.onPrimary,
          textStyle: context.button,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xffE5E5E5),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: onPress,
        child: SizedBox(
          height: 40,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              SvgPicture.asset(
                icon,
                width: 18,
                height: 18,
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: context.title,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
