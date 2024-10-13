import 'package:adaptive_dashboard_app/Widgets/CustomTextField.dart';
import 'package:adaptive_dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuestionTextField extends StatelessWidget {
  const QuestionTextField({super.key, required this.text, required this.hint});
  final String text;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Appstyles.styleMedium16(context),
        ),
        CustomTextField(hint: hint)
      ],
    );
  }
}
