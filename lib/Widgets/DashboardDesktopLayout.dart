import 'package:adaptive_dashboard_app/Widgets/DashboardDesktopLayoutBody.dart';

import 'package:adaptive_dashboard_app/Widgets/Drawer.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 5, child: DashboardDesktopLayoutBody())
      ],
    );
  }
}
