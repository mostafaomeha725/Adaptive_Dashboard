import 'package:adaptive_dashboard_app/Widgets/DotWidget.dart';
import 'package:adaptive_dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetalis extends StatelessWidget {
  const IncomeDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Design service',
            style: Appstyles.styleMedium16(context),
          ),
          trailing: Text(
            '40%',
            style: Appstyles.styleMedium18(context),
          ),
          leading: DotWidget(color: Color(0xff208CC8)),
        ),
        ListTile(
          title: Text(
            'Design product',
            style: Appstyles.styleMedium16(context),
          ),
          trailing: Text(
            '25%',
            style: Appstyles.styleMedium18(context),
          ),
          leading: DotWidget(color: Color(0xff4EB7F2)),
        ),
        ListTile(
          title: Text(
            'Product royalti',
            style: Appstyles.styleMedium16(context),
          ),
          trailing: Text(
            '20%',
            style: Appstyles.styleMedium18(context),
          ),
          leading: DotWidget(color: Color(0xff064061)),
        ),
        ListTile(
          title: Text(
            'Other',
            style: Appstyles.styleMedium16(context),
          ),
          trailing: Text(
            '22%',
            style: Appstyles.styleMedium18(context),
          ),
          leading: DotWidget(color: Color(0xffE2DECD)),
        ),
      ],
    );
  }
}
