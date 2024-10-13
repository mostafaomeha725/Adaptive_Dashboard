import 'package:adaptive_dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppbarContainerQuickInvoice extends StatelessWidget {
  const AppbarContainerQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Quick Invoice',
              style: Appstyles.styleSemiBold20(context),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xffFAFAFA)),
              child: const Padding(
                padding: EdgeInsets.all(14.0),
                child: Icon(
                  Icons.add,
                  color: Color(0xff4EB7F2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
