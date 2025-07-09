import 'package:dalel/Features/Auth/presentation/views/log_in_view.dart';
import 'package:dalel/Features/Auth/presentation/views/sign_up_view.dart';
import 'package:dalel/Features/OnBoarding/presentation/views/on_boarding_view.dart';
import 'package:dalel/Features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),

    GoRoute(
      path: '/onBoarding',
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingView();
      },
    ),

    GoRoute(
      path: '/signUp',
      builder: (BuildContext context, GoRouterState state) {
        return const SignUpView();
      },
    ),


  GoRoute(
      path: '/logIn',
      builder: (BuildContext context, GoRouterState state) {
        return const LogInView();
      },
    ),
    
  ],
);
