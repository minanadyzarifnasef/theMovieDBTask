import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themoviedbtask/core/constants/colors.dart';

import '../../constants/constants.dart';
import '../text_style.dart';
import 'loader.dart';


class GoButton extends StatelessWidget {
  const GoButton(
      {required this.fun,
      required this.titleKey,
      this.w,
      this.fontWeight,
      this.icon,
      this.alignment,
      this.loaderColor,
      this.vertical,
      this.curvy,
      this.gradient = false,
      this.fontSize,
      this.loading = false,
      this.hi,
      this.btColor,
      this.borderColor,
      this.textColor,
      this.enable = true,
      super.key});

  final Alignment? alignment;
  final Function fun;
  final double? w;
  final double? hi;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? curvy;
  final String titleKey;
  final Color? btColor;
  final Color? borderColor;
  final Color? textColor;
  final bool loading;
  final Color? loaderColor;
  final bool enable;
  final bool? vertical;
  final bool gradient;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (enable && !loading) {
          fun();
        }
      },
      child: Container(
        height: hi ?? 55,
        width: w ?? uiWidth.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: enable ? btColor ?? primaryColor : backgroundColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: loading
            ? Loader(size: 45.0, color: loaderColor)
            : Center(
          child: Text(
            titleKey,
            style: TextStyles.bold16white.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
