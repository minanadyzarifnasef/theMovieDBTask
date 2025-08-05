import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themoviedbtask/core/constants/colors.dart';
import 'package:themoviedbtask/core/constants/strings.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/style/text_style.dart';
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({required this.title,super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding:  EdgeInsets.only(top: 40.h,left: horizontalPadding,right:horizontalPadding ,bottom: horizontalPadding),
      child: Row(
        children: [
          Image.asset("$imgUrl/icon.png",width: 35.w,height: 60.h,fit: BoxFit.fill,),
          SizedBox(width: 5.w,),
          Text(title,style: TextStyles.bold16.copyWith(color: primaryColor),),
          Spacer(),
          Icon(Icons.notifications_active)
          
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
