import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'store_passport_loader.dart';

class StorePassportOverlayWidget extends StatelessWidget {
  final Widget child;

  const StorePassportOverlayWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      useDefaultLoading: false,
      overlayOpacity:
          Theme.of(context).brightness == Brightness.dark ? 0.2 : 0.5,
      overlayWidget: StorePassportLoader(),
      child: child,
    );
  }
}
