import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themoviedbtask/core/constants/colors.dart';
import 'package:themoviedbtask/core/constants/strings.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/style/text_style.dart';
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding:  EdgeInsets.only(top: 40.h,left: horizontalPadding,right:horizontalPadding ,bottom: horizontalPadding),
      child: Row(
        children: [
          Image.asset("$imgUrl/icon.png",width: 50.w,),
          SizedBox(width: 5.w,),
          Text(welcomeVisitor,style: TextStyles.bold24.copyWith(color: primaryColor),),
          Spacer(),
          Icon(Icons.notifications_active)
          
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70.h);
}
