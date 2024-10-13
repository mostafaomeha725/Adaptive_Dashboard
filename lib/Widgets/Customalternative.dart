import 'package:flutter/material.dart';

class CustomAlternative extends StatelessWidget {
  const CustomAlternative({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 8,
            decoration: BoxDecoration(
              color: const Color(0xff4EB7F2),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: const Color(0xffE8E8E8),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: const Color(0xffE8E8E8),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}
