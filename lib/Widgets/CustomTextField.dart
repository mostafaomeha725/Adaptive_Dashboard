import 'package:adaptive_dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xffFAFAFA),
          )),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: Appstyles.styleRegular16gray(context),
        ),
      ),
    );
  }
}
