import 'package:flutter/material.dart';
import 'package:themoviedbtask/core/constants/constants.dart';
import 'package:themoviedbtask/core/constants/strings.dart';

import '../../../core/constants/colors.dart';
import '../../../core/style/widgets/go_button.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(horizontalPadding*2),
            child: Image.asset(
              "$imgUrl/logo.png",
            ),
          ),

          GoButton(titleKey: "continue",fun: (){},)

        ],
      ),
    );
  }
}
