import 'package:adaptive_dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ContainerGrayWithdraw extends StatelessWidget {
  const ContainerGrayWithdraw(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.price});
  final String title;
  final String subtitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        height: 78,
        decoration: BoxDecoration(
          color: const Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          title: Text(
            title,
            style: Appstyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            subtitle,
            style: Appstyles.styleRegular16gray(context),
          ),
          trailing: Text(
            price,
            style: Appstyles.styleSemiBold20green(context),
          ),
        ),
      ),
    );
  }
}
