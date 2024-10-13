import 'package:adaptive_dashboard_app/Widgets/AdaptiveLayout.dart';
import 'package:adaptive_dashboard_app/Widgets/DashboardDesktopLayout.dart';
import 'package:adaptive_dashboard_app/Widgets/DashboardMobileLayout.dart';
import 'package:adaptive_dashboard_app/Widgets/DashboardTabletLayout.dart';
import 'package:adaptive_dashboard_app/Widgets/Drawer.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scaffoldKey,
      appBar: width < 800
          ? AppBar(
              backgroundColor: const Color(0xffFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer: width < 800
          ? Drawer(
              shape: InputBorder.none,
              width: width * 0.7,
              backgroundColor: const Color(0xffFFFFFF),
              child: const CustomDrawer(),
            )
          : null,
      body: const AdaptiveLayout(
        mobileLayout: DashboardMobileLayout(),
        tabletLayout: DashboardTabletLayout(),
        desktopLayout: DashboardDesktopLayout(),
      ),
    );
  }
}
