import 'package:flutter/material.dart';
import 'package:themoviedbtask/core/constants/constants.dart';
import 'package:themoviedbtask/core/constants/strings.dart';
import 'package:themoviedbtask/core/helper/extensions.dart';
import 'package:themoviedbtask/core/routing/routes.dart';

import '../../../core/constants/colors.dart';
import '../../../core/style/widgets/go_button.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: EdgeInsets.all(horizontalPadding*2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "$imgUrl/logo.png",
            ),
            GoButton(
              titleKey: continueBtn,
              fun: ()=>context.pushNamed(Routes.actorsListScreen),
              btColor: backgroundColor,
              textColor: primaryColor,
            )

          ],
        ),
      ),
    );
  }
}
