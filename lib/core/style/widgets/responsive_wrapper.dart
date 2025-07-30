import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constants.dart';
import '../../constants/strings.dart';
import '../../services/network_checker_service.dart';
import '../text_style.dart';
class ResponsiveWrapper extends StatelessWidget {
  final Widget child;

  const ResponsiveWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(uiWidth, uiHeight),
      minTextAdapt: true,
        child:child
    );
  }
}
