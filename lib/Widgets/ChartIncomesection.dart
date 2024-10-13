import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartIncomeSection extends StatefulWidget {
  ChartIncomeSection({super.key});

  @override
  State<ChartIncomeSection> createState() => _ChartIncomeSectionState();
}

class _ChartIncomeSectionState extends State<ChartIncomeSection> {
  int activeIndex = -1;

  final List<PieChartSectionData> sections = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32),
      child: AspectRatio(
          aspectRatio: 1,
          child: PieChart(PieChartData(
              pieTouchData: PieTouchData(
                enabled: true,
                touchCallback: (p0, pietouchResponse) {
                  activeIndex =
                      pietouchResponse?.touchedSection?.touchedSectionIndex ??
                          -1;
                  setState(() {});
                },
              ),
              sections: [
                PieChartSectionData(
                  color: Color(0xff208CC8),
                  value: 40,
                  title: 'Design Service',
                  radius: activeIndex == 0 ? 40 : 30,
                  showTitle: false,
                ),
                PieChartSectionData(
                  color: Color(0xff4EB7F2),
                  value: 25,
                  title: 'Design Product',
                  radius: activeIndex == 1 ? 40 : 30,
                  showTitle: false,
                ),
                PieChartSectionData(
                  color: Color(0xff064061),
                  value: 20,
                  title: 'Product royalti',
                  radius: activeIndex == 2 ? 40 : 30,
                  showTitle: false,
                ),
                PieChartSectionData(
                  color: Color(0xffE2DECD),
                  value: 22,
                  title: 'Other',
                  radius: activeIndex == 3 ? 40 : 30,
                  showTitle: false,
                ),
              ]))),
    );
  }
}
