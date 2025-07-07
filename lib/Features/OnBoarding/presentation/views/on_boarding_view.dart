import 'package:dalel/Features/OnBoarding/presentation/widgets/on_boarding_body.dart';
import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/utlis/app_text_styles.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 40),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  AppStrings.skip,
                  style: AppStyles.poppins300style16.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              OnBoardingBody(),
            ],
          ),
        ),
      ),
    );
  }
}
