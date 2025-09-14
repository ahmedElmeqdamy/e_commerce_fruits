import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: SvgPicture.asset('assets/images/profile_picture.svg'),
    );
  }
}
