import 'package:adaptive_dashboard_app/Widgets/CardTransaction1.dart';
import 'package:adaptive_dashboard_app/Widgets/Customalternative.dart';
import 'package:adaptive_dashboard_app/Widgets/TranscationHistory.dart';

import 'package:adaptive_dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ContainerTransaction1 extends StatelessWidget {
  const ContainerTransaction1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'My Card',
              style: Appstyles.styleSemiBold20(context),
            ),
          ),
          const CardTransaction1(),
          const CustomAlternative(),
          const SizedBox(
            height: 6,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(
              thickness: 0.3,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TransactionHistory(),
        ],
      ),
    );
  }
}
