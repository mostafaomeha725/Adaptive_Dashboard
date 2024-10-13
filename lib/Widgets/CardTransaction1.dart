import 'package:adaptive_dashboard_app/utils/app_images.dart';
import 'package:adaptive_dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardTransaction1 extends StatelessWidget {
  const CardTransaction1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          decoration: ShapeDecoration(
              color: const Color(0xff4EB7F2),
              image: const DecorationImage(
                image: AssetImage(Assets.imagesCardBackground),
                fit: BoxFit.fill,
              ),
              shape: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12))),
          height: 215,
          child: Column(
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.only(left: 31, right: 42, top: 16),
                trailing: SvgPicture.asset(Assets.imagesGallery),
                title: Text(
                  'Name card',
                  style: Appstyles.styleRegular16white(context),
                ),
                subtitle: Text(
                  'Syah Bandi',
                  style: Appstyles.styleMedium20(context),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '0918 8124 0042 8129',
                      style: Appstyles.styleSemiBold24white(context),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '12/20 - 124',
                      style: Appstyles.styleRegular16white(context),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
