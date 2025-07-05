import 'package:dalel/core/Routes/App_router.dart';
import 'package:dalel/core/utlis/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offwhite),
      debugShowCheckedModeBanner: false,
    );
  }
}
