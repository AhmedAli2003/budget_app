import 'package:budget_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  final String label;
  final double amountSpent;
  final double mostExpensive;
  const Bar({
    super.key,
    required this.label,
    required this.amountSpent,
    required this.mostExpensive,
  });

  final double _maxBarHeight = 150;

  final TextStyle style = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );

  @override
  Widget build(BuildContext context) {
    final barHeight = amountSpent / mostExpensive * _maxBarHeight;
    return Column(
      children: [
        Text('\$${amountSpent.toStringAsFixed(2)}', style: style),
        const SizedBox(height: 8.0),
        Container(
          height: barHeight,
          width: 18.8,
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          label,
          style: style,
        ),
      ],
    );
  }
}
