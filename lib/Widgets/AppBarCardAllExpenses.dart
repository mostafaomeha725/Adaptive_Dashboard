import 'package:adaptive_dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppbarCardAllExpenses extends StatelessWidget {
  const AppbarCardAllExpenses({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Appstyles.styleSemiBold20(context),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xffF1F1F1))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      'Monthly ',
                      style: Appstyles.styleMedium16(context),
                    ),
                    const Icon(Icons.arrow_drop_up_rounded)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
