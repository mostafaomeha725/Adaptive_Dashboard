import 'package:adaptive_dashboard_app/Widgets/containergraywithdraw.dart';
import 'package:adaptive_dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction History',
                  style: Appstyles.styleSemiBold20(context),
                ),
                Text(
                  'See all',
                  style: Appstyles.styleMedium16blue(context),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '13 April 2022',
              style: Appstyles.styleMedium16gray(context),
            ),
            const SizedBox(
              height: 16,
            ),
            const ContainerGrayWithdraw(
              title: 'Cash Withdrawal',
              subtitle: '13 Apr, 2022 ',
              price: '\$20,129',
            ),
            const ContainerGrayWithdraw(
              title: 'Landing Page project',
              subtitle: '13 Apr, 2022 at 3:30 PM ',
              price: '\$20,129',
            ),
            const ContainerGrayWithdraw(
              title: 'Juni Mobile App project',
              subtitle: '13 Apr, 2022 at 3:30 PM',
              price: '\$20,129',
            ),
          ],
        ),
      ),
    );
  }
}
