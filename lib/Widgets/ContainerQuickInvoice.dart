import 'package:adaptive_dashboard_app/Model/EmailCardModel.dart';
import 'package:adaptive_dashboard_app/Widgets/AppbarContainerQuickInvoice.dart';
import 'package:adaptive_dashboard_app/Widgets/ContainerSendMoney.dart';

import 'package:adaptive_dashboard_app/Widgets/EmailCard.dart';
import 'package:adaptive_dashboard_app/Widgets/QuestionTextField.dart';
import 'package:adaptive_dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ContainerQuickInvoic extends StatelessWidget {
  ContainerQuickInvoic({super.key});
  List<EmailCardModel> items = [
    EmailCardModel(title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),
    EmailCardModel(title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),
    EmailCardModel(title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 14),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffFFFFFF)),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppbarContainerQuickInvoice(),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Latest Transaction',
              style: Appstyles.styleMedium16(context),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: items
                  .map((e) =>
                      IntrinsicWidth(child: EmailCard(emailCardModel: e)))
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Divider(
            thickness: 0.2,
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            children: [
              Expanded(
                child: QuestionTextField(
                  hint: 'Type Customer name',
                  text: 'Customer name',
                ),
              ),
              Expanded(
                child: QuestionTextField(
                  hint: 'Type Customer Email',
                  text: 'Customer Email',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            children: [
              Expanded(
                child: QuestionTextField(
                  hint: 'Type Customer name',
                  text: 'Item name',
                ),
              ),
              Expanded(
                child: QuestionTextField(
                  hint: 'USD',
                  text: 'Item Mount',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                  child: ContainerSendMoney(
                text: 'Add more details',
                style: Appstyles.styleSemiBold18(context),
              )),
              Expanded(
                  child: ContainerSendMoney(
                text: 'Send Money',
                color: const Color(0xff4EB7F2),
                style: Appstyles.styleSemiBold18white(context),
              )),
            ],
          )
        ],
      ),
    );
  }
}
