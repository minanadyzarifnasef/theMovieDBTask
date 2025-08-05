import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themoviedbtask/core/constants/colors.dart';
import 'package:themoviedbtask/core/constants/constants.dart';
import 'package:themoviedbtask/core/constants/strings.dart';
import 'package:themoviedbtask/core/helper/extensions.dart';
import 'package:themoviedbtask/core/style/widgets/go_button.dart';
import 'package:themoviedbtask/features/actors/presentation/widgets/home_app_bar.dart';
import 'package:themoviedbtask/features/actors/presentation/widgets/image_slider.dart';

import '../../../core/style/text_style.dart';

class ActorDetails extends StatelessWidget {
  const ActorDetails({required this.actor, super.key});
  final actor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HomeAppBar(
          title: "person name",
        ),
        body: Container(
          height: uiHeight.h,width: uiWidth.w,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [secondFontColor, secondPrimaryColor, primaryColor],
              stops: [0.0, 0.6, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              ImageSlider(),
               SizedBox(height: 30.h),
              Text(
                "Name",
                style: TextStyles.bold16,
              ),
              SizedBox(height: 8.h),
              Text(
                "Actor",
                style: TextStyles.bold16white.copyWith(color: fontColor),
              ),
              const SizedBox(height: 16),

              // Description
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "description description description description \ndescription description description description description description",
                  textAlign: TextAlign.center,
                  style: TextStyles.bold16white.copyWith(color: fontColor),
                ),
              ),

              const Spacer(),

              // Read More button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: GoButton(fun: ()=>context.pop(), titleKey: backBtn,btColor: secondFontColor,textColor: primaryColor,),
              ),


               SizedBox(height: 40.h),
            ],
          ),
        )
    );
  }
}
