import 'package:dalel/Features/OnBoarding/data/models/onBoarding_model.dart';
import 'package:dalel/Features/OnBoarding/presentation/widgets/custom_page_indicator.dart';
import 'package:dalel/core/utlis/app_assets.dart';
import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/utlis/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key, required this.controller, this.onPageChanged});
  PageController controller = PageController();
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 650,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        controller: controller,
        physics: const BouncingScrollPhysics(),
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  height: 290,
                  width: 343,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(onBoardingData[index].image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                CustomPageIndicator(controller: controller),
                SizedBox(height: 20),
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  onBoardingData[index].title,
                  style: AppStyles.poppins500style24,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  overflow: TextOverflow.ellipsis,

                  maxLines: 2,
                  onBoardingData[index].subTiltle,
                  style: AppStyles.poppins300style16,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
