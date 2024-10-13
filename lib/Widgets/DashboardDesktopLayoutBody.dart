import 'package:adaptive_dashboard_app/Widgets/DashboardInvoice.dart';
import 'package:adaptive_dashboard_app/Widgets/DashboardTransaction.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayoutBody extends StatelessWidget {
  const DashboardDesktopLayoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Row(
        children: [
          Expanded(flex: 3, child: DashboardInvoice()),
          Expanded(flex: 2, child: DashboardTransaction())
        ],
      ),
    );
  }
}
