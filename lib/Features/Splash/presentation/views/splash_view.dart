import 'package:dalel/core/fuctions/custom_navigate.dart';
import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/utlis/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
 
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
     customNavigate(context: context, path: '/onBoarding');
  }

  
  Widget build(BuildContext context) {
    return   Scaffold(
      body:Center(
        child: Text(AppStrings.appName,style: AppStyles.pacifico400style64),
      )
    );
  }
}