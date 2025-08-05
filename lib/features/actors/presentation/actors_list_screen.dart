import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themoviedbtask/core/constants/colors.dart';
import 'package:themoviedbtask/core/constants/constants.dart';
import 'package:themoviedbtask/core/constants/strings.dart';
import 'package:themoviedbtask/core/helper/extensions.dart';
import 'package:themoviedbtask/core/routing/routes.dart';
import 'package:themoviedbtask/features/actors/presentation/widgets/home_app_bar.dart';

import '../../../core/style/text_style.dart';
class ActorsListScreen extends StatelessWidget {
  const ActorsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: HomeAppBar(title: welcomeVisitor,),
      body: Padding(
        padding: EdgeInsets.all(horizontalPadding),
        child: ListView.separated(
          itemCount: 15,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => GestureDetector(
            onTap: ()=>context.pushNamed(Routes.actorDetails,arguments: index),
            child: Card(
              surfaceTintColor: primaryColor,

              // width: uiWidth.w,height: 70.h,
              // decoration: BoxDecoration(
              //   color: Colors.red
              // ),
              child: Padding(
                padding:  EdgeInsets.all(horizontalPadding/1.5),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40.r,
                      backgroundImage: NetworkImage("https://img.freepik.com/free-photo/young-male-posing-isolated-against-blank-studio-wall_273609-12356.jpg"),
                    ),
                    SizedBox(width: 8.w),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name",style: TextStyles.bold16,),
                        Text("Description Description Description Description",style: TextStyles.bold16white.copyWith(color: Colors.black54),),
                      ],
                    ))
                  ],
                ),
              ),
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(height: 8.h,)
        ),
      ),
    );
  }
}
