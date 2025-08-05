import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:themoviedbtask/core/constants/colors.dart';

import '../../constants/constants.dart';
import '../../constants/strings.dart';
import '../../services/network_checker_service.dart';
import '../text_style.dart';
class NetworkManager extends StatelessWidget {
  final Widget child;

  const NetworkManager({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: NetworkConnectivityService.instance.connectionStream,
      initialData: NetworkConnectivityService.instance.isConnected,
      builder: (context, snapshot) {
        final isConnected = snapshot.data ?? true;
        log("current network state is connected ? $isConnected");
        return ColoredBox(
          color:  stateBarColor,
          child: Scaffold(
            body: Column(
              children: [
                if (!isConnected)
                  Container(
                    decoration: const BoxDecoration(color: errorColor),
                    width: MediaQuery.of(context).size.width,
                    padding:  EdgeInsets.only(left: horizontalPadding,right: horizontalPadding,top: 50.h,bottom: 10.h),
                    child: Text(
                      offlineHint,
                      style: TextStyles.normal16white,
                    ),
                  ),
                Expanded(child: child),
              ],
            ),
          ),
        );
      },
    );
  }
}
