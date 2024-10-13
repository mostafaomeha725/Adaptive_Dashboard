import 'package:adaptive_dashboard_app/Model/EmailCardModel.dart';
import 'package:adaptive_dashboard_app/utils/app_images.dart';
import 'package:adaptive_dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({super.key, required this.emailCardModel});
  final EmailCardModel emailCardModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        color: const Color(0xffFAFAFA),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ListTile(
            leading: SvgPicture.asset(
              Assets.imagesAvatar1,
              width: 40,
            ),
            title: Text(
              emailCardModel.title,
              style: Appstyles.styleSemiBold16(context),
            ),
            subtitle: Text(
              emailCardModel.subtitle,
              style: Appstyles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
