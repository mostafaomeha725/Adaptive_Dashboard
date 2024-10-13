import 'package:adaptive_dashboard_app/Widgets/AppBarCardAllExpenses.dart';
import 'package:adaptive_dashboard_app/Widgets/ChartIncomesection.dart';
import 'package:adaptive_dashboard_app/Widgets/IncomeDetails.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          children: [
            const AppbarCardAllExpenses(text: 'Income'),
            Row(
              children: [
                Expanded(flex: 2, child: ChartIncomeSection()),
                const Expanded(
                  flex: 3,
                  child: IncomeDetalis(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
