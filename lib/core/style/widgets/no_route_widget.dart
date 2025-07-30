import 'package:flutter/material.dart';

import '../../constants/strings.dart';
import '../text_style.dart';
class NoRouteWidget extends StatelessWidget {
  const NoRouteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:  Text(invalidRoute,style: TextStyles.bold24,),
      ),
    );
  }
}
