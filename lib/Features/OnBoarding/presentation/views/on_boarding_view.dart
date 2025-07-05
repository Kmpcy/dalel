import 'package:dalel/Features/OnBoarding/presentation/widgets/on_boarding_body.dart';
import 'package:dalel/core/utlis/app_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Align(alignment: Alignment.topRight, child: Text(AppStrings.skip)),
            OnBoardingBody(),
          ],
        ),
      ),
    );
  }
}