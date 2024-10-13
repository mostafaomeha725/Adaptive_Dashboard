import 'package:adaptive_dashboard_app/Widgets/DashboardInvoice.dart';
import 'package:adaptive_dashboard_app/Widgets/DashboardTransaction.dart';
import 'package:flutter/material.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(
      children: [
        DashboardInvoice(),
        DashboardTransaction(),
      ],
    ));
  }
}
