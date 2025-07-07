import 'package:dalel/core/utlis/app_colors.dart';
import 'package:dalel/core/utlis/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.onPressed,
    required this.text,
    this.color,
  });
  final void Function() onPressed;
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          //   ),
          backgroundColor: MaterialStateProperty.all(
            color ?? AppColors.primaryColor,
          ),
        ),
        child: Text(
          text,
          style: AppStyles.poppins500style24.copyWith(
            color: AppColors.offwhite,
          ),
        ),
      ),
    );
  }
}
