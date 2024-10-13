import 'package:adaptive_dashboard_app/Widgets/ContainerTransaction1.dart';
import 'package:adaptive_dashboard_app/Widgets/IncomeSection.dart';
import 'package:flutter/material.dart';

class DashboardTransaction extends StatelessWidget {
  const DashboardTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ContainerTransaction1(),
        IncomeSection(),
      ],
    );
  }
}
