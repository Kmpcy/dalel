import 'package:dalel/Features/OnBoarding/presentation/widgets/custom_page_indicator.dart';
import 'package:dalel/core/utlis/app_text_styles.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key, controller});
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset('assets/images/onBoarding1.png', fit: BoxFit.contain),
              SizedBox(height: 24),
              CustomPageIndicator(controller: controller),
              SizedBox(height: 32),
            Text(
              "Explore The history with Dalel in a smart way",
              style: AppStyles.poppins500style24,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              "Using our app’s history libraries you can find many historical periods ",
              style: AppStyles.poppins300style16,
              textAlign: TextAlign.center,
            ),
            ],
          );
        },
      ),
    );
  }
}
