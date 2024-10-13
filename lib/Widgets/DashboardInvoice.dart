import 'package:adaptive_dashboard_app/Widgets/CardAllExpenses.dart';
import 'package:flutter/material.dart';

class DashboardInvoice extends StatelessWidget {
  const DashboardInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CardAllExpenses()],
    );
  }
}
