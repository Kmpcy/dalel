import 'package:dalel/Features/OnBoarding/data/models/onBoarding_model.dart';
import 'package:dalel/Features/OnBoarding/presentation/widgets/custom_autn_btns.dart';
import 'package:dalel/Features/OnBoarding/presentation/widgets/on_boarding_body.dart';
import 'package:dalel/core/dataBase/cache/cache_helper.dart';
import 'package:dalel/core/fuctions/custom_navigate.dart';
import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/utlis/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});
  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: 15),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  CacheHelper().saveData(
                    key: "isOnBoardingVisited",
                    value: true,
                  );
                  customNavigate(context: context, path: '/signUp');
                },
                child: Text(
                  AppStrings.skip,
                  style: AppStyles.poppins300style16.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            OnBoardingBody(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),

            currentIndex == onBoardingData.length - 1
                ? customAuthBtns()
                : CustomBtn(
                    onPressed: () {
                      controller.nextPage(
                        duration: Duration(microseconds: 200),
                        curve: Curves.bounceIn,
                      );
                    },
                    text: AppStrings.next,
                  ),
            SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
