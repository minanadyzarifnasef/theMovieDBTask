import 'package:flutter/material.dart';

import '../../constants/colors.dart';
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

        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: TextScaler.noScaling),
          child: SafeArea(
              child: Scaffold(
            body: Column(
              children: [
                if (!isConnected)
                  Container(
                    decoration: const BoxDecoration(color: errorColor),
                    padding: const EdgeInsets.all(horizontalPadding),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(offlineHint,style: TextStyles.bold18,
                    ),
                  ),
                Expanded(child: child),
              ],
            ),
          )
          ),
        );
      },
    );
  }
}
