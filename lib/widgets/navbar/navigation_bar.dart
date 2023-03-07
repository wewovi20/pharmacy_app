import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navbar_mobile.dart';
import 'navbar_tablet_desktop.dart';

class NavigationBarr extends StatelessWidget {
  const NavigationBarr({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: null,
        desktop: (context) {
          return NavigationTabletDesktop();
        });
  }
}
