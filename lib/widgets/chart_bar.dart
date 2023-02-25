import 'package:budget_app/constants/app_texts.dart';
import 'package:budget_app/data/data.dart';
import 'package:budget_app/widgets/bar.dart';
import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final List<double> expenses;
  const ChartBar({
    super.key,
    required this.expenses,
  });

  double _getMostExpensive(List<double> expenses) {
    double max = 0;
    for (final element in expenses) {
      max = element > max ? element : max;
    }
    return max;
  }

  @override
  Widget build(BuildContext context) {
    final mostExpensive = _getMostExpensive(expenses);
    return Column(
      children: [
        Text(
          AppTexts.chartsTitle,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              iconSize: 30.0,
              icon: const Icon(Icons.arrow_back),
            ),
            Text(
              'Nov 10, 2019 - Nov 16, 2019',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            IconButton(
              onPressed: () {},
              iconSize: 30.0,
              icon: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
        const SizedBox(height: 5.0),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(
              weekDays.length,
              (index) => Bar(
                label: weekDays[index],
                amountSpent: expenses[index],
                mostExpensive: mostExpensive,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
