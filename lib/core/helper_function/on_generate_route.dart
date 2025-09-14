import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/views/sign_in_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/sign_up_view.dart';
import 'package:fruits_hub/features/home/presentation/views/home_view.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGeneratRoute(RouteSettings setting) {
  switch (setting.name) {
    case "splashView":
      return MaterialPageRoute(builder: (context) => SplashView());

    case "signUpView":
      return MaterialPageRoute(builder: (context) => SignUpView());


    case "homeView":
      return MaterialPageRoute(builder: (context) => HomeView());


    case "loginView":
      return MaterialPageRoute(builder: (context) => SignInView());
    case "onBoardingView":
      return MaterialPageRoute(builder: (context) => OnBoardingView());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(child: Text('No route defined for ${setting.name}')),
        ),
      );
  }
}
