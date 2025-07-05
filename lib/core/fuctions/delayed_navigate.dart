 import 'package:dalel/core/fuctions/custom_navigate.dart';

void delayedNavigate(context) {
    Future.delayed(const Duration(seconds: 2), () {
     customNavigate(path:  '/onBoarding', context: context);
     });
  }