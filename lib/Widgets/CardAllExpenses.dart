import 'package:adaptive_dashboard_app/Widgets/AppBarCardAllExpenses.dart';
import 'package:adaptive_dashboard_app/Widgets/Card2Expeses.dart';
import 'package:adaptive_dashboard_app/Widgets/ContainerQuickInvoice.dart';
import 'package:adaptive_dashboard_app/utils/app_images.dart';
import 'package:flutter/material.dart';

class CardAllExpenses extends StatelessWidget {
  const CardAllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          children: [
            const AppbarCardAllExpenses(
              text: 'All Expenses',
            ),
            const Row(
              children: [
                Expanded(
                    child: Card2Expenses(
                  image: Assets.imagesBalance,
                  text1: 'Balance',
                )),
                Expanded(
                    child: Card2Expenses(
                  image: Assets.imagesIncome,
                  text1: 'Income',
                )),
                Expanded(
                    child: Card2Expenses(
                  image: Assets.imagesExpenses,
                  text1: 'Expenses',
                ))
              ],
            ),
            ContainerQuickInvoic(),
          ],
        ),
      ),
    );
  }
}
