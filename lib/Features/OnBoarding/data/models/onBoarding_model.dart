import 'package:dalel/core/utlis/app_assets.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String subTiltle;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.subTiltle,
  });
}

List <OnboardingModel> onBoardingData = [
  OnboardingModel(
    image: Assets.assetsImagesOnBoarding1,
    title: 'Explore The history with Dalel in a smart way',
    subTiltle:
        'Using our app’s history libraries you can find many historical periods ',
  ),
  OnboardingModel(
    image: Assets.assetsImagesOnBoarding2,
    title: 'From every place on earth',
    subTiltle:
        'A big variety of ancient places from all over the world',
  ),
  OnboardingModel(
    image: Assets.assetsImagesOnBoarding3,
    title: 'Using modern AI technology for better user experience',
    subTiltle:
        'AI provide recommendations and helps you to continue the search journey',
  ),
];
