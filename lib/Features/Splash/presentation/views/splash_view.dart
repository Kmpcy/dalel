import 'package:dalel/core/dataBase/cache/cache_helper.dart';
import 'package:dalel/core/fuctions/delayed_navigate.dart';
import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/utlis/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
   bool isOnBoardingVisited = CacheHelper().getData(key: "isOnBoardingVisited") ?? false;

if(isOnBoardingVisited ==false ){
    delayedNavigate('/onBoarding',context);

}else{
    delayedNavigate('/signUp',context);
}


  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppStrings.appName, style: AppStyles.pacifico400style64),
      ),
    );
  }
}
