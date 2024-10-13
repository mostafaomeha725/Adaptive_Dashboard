import 'package:flutter/material.dart';

class ContainerSendMoney extends StatelessWidget {
  const ContainerSendMoney(
      {super.key, this.color, required this.text, required this.style});
  final Color? color;
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
