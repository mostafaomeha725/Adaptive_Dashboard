import 'package:adaptive_dashboard_app/Widgets/DashboardMobileLayout.dart';
import 'package:adaptive_dashboard_app/Widgets/Drawer.dart';
import 'package:flutter/material.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 2, child: DashboardMobileLayout())
      ],
    );
  }
}
