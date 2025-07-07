import 'package:dalel/Features/OnBoarding/presentation/widgets/custom_page_indicator.dart';
import 'package:dalel/core/utlis/app_assets.dart';
import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/utlis/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key, controller});
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 750,
      child: PageView.builder(
        controller: controller,
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.assetsImagesOnBoarding1),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 24),
              CustomPageIndicator(controller: controller),
              SizedBox(height: 32),
              Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                "Explore The history with Dalel in a smart way",
                style: AppStyles.poppins500style24,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                overflow: TextOverflow.ellipsis,

                maxLines: 2,
                "Using our app’s history libraries you can find many historical periods ",
                style: AppStyles.poppins300style16,
                textAlign: TextAlign.center,
              ),
              Spacer(flex: 2),

              CustomBtn(onPressed: () {}, text: AppStrings.next),
              SizedBox(height: 17),
            ],
          );
        },
      ),
    );
  }
}
