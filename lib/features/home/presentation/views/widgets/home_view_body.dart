import 'package:flutter/material.dart';

import 'custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [

      CustomHomeAppBar(),
    ]);
  }
}
