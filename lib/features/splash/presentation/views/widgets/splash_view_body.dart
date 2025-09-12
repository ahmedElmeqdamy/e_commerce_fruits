import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/services/shared_prefrences_singleton.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [SvgPicture.asset("assets/images/tree-logo.svg")],
        ),
        SvgPicture.asset(
          'assets/images/fruits-logo.svg',
          width: 100,
          height: 150,
        ),
        SvgPicture.asset('assets/images/logo-down.svg', fit: BoxFit.fill),
      ],
    );
  }

  void excuteNavigation() {
    bool isBoardView = Prefs.getBool('isOnBoardingViewSeen');
    Future.delayed(Duration(seconds: 3), () {
      if (isBoardView) {
        Navigator.pushReplacementNamed(context, 'loginView');
      } else {
        Navigator.pushReplacementNamed(context, 'onBoardingView');
      }
    });
  }
}
