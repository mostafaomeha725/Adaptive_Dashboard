import 'package:adaptive_dashboard_app/Model/EmailCardModel.dart';
import 'package:adaptive_dashboard_app/Model/IconModel.dart';
import 'package:adaptive_dashboard_app/Widgets/EmailCard.dart';

import 'package:adaptive_dashboard_app/utils/app_images.dart';
import 'package:adaptive_dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  EmailCardModel emailCardModel =
      EmailCardModel(title: 'mostafa', subtitle: 'mostafa@gmail.com');

  final List<Iconmodel> myList = [
    Iconmodel(
      image: Assets.imagesDashboard,
      text: 'Dashboard',
    ),
    Iconmodel(
      image: Assets.imagesMyTransctions,
      text: 'My Transction',
    ),
    Iconmodel(
      image: Assets.imagesStatistics,
      text: 'Statistics',
    ),
    Iconmodel(
      image: Assets.imagesWalletAccount,
      text: 'Wallet Account',
    ),
    Iconmodel(
      image: Assets.imagesMyInvestments,
      text: 'My Investment',
    ),
    // Add more items as needed
  ];
  int activeIndex = -1;
  bool isButtonHighlighted = false;

  void handleButtonPress() {
    setState(() {
      isButtonHighlighted = !isButtonHighlighted;
    });

    // Perform your desired action here
    print('Button clicked!');
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: EmailCard(
          emailCardModel: emailCardModel,
        )),
        SliverList(
          delegate: SliverChildBuilderDelegate(childCount: myList.length,
              (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: activeIndex == index ? Colors.blue : Colors.white,
                      width: 4,
                    ),
                  ),
                ),
                child: ListTile(
                  leading: SvgPicture.asset(myList[index].image),
                  title: Text(
                    myList[index].text,
                    style: activeIndex == index
                        ? Appstyles.styleBold16(context)
                        : Appstyles.styleRegular16(context),
                  ),
                  onTap: () {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ),
              ),
            );
          }),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 48),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: activeIndex == 6 ? Colors.blue : Colors.white,
                        width: 4,
                      ),
                    ),
                  ),
                  child: ListTile(
                      onTap: () {
                        setState(() {
                          activeIndex = 6;
                        });
                      },
                      leading: SvgPicture.asset(
                        Assets.imagesSettings,
                      ),
                      title: Text(
                        "Setting System",
                        style: activeIndex == 6
                            ? Appstyles.styleBold16(context)
                            : Appstyles.styleRegular16(context),
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: activeIndex == 7 ? Colors.blue : Colors.white,
                        width: 4,
                      ),
                    ),
                  ),
                  child: ListTile(
                      onTap: () {
                        setState(() {
                          activeIndex = 7;
                        });
                      },
                      leading: SvgPicture.asset(
                        Assets.imagesLogout,
                      ),
                      title: Text(
                        "Logout Account",
                        style: activeIndex == 7
                            ? Appstyles.styleBold16(context)
                            : Appstyles.styleRegular16(context),
                      )),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
