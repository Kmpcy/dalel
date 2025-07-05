import 'package:dalel/Features/OnBoarding/presentation/widgets/custom_page_indicator.dart';
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
            ],
          );
        },
      ),
    );
  }
}
