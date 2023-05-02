import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnText,
    this.backgroundColor = const Color(0xffEF8262),
    this.borderRadius,
    this.btnTextColor = Colors.white,
    this.onPressed,
  });
  final String btnText;
  final Color btnTextColor;
  final Color backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12.0),
            )),
        onPressed: onPressed,
        child: Text(
          btnText,
          style: Styles.text16.copyWith(color: btnTextColor),
        ),
      ),
    );
  }
}