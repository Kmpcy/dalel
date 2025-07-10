 import 'package:dalel/core/fuctions/custom_navigate.dart';

void delayedNavigate(String path,context) {
    Future.delayed(const Duration(seconds: 2), () {

     customReplaceNavigate(path:  path, context: context);
     });
  }