import 'package:budget_app/constants/app_texts.dart';
import 'package:budget_app/data/data.dart';
import 'package:budget_app/theme/app_colors.dart';
import 'package:budget_app/widgets/chart_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            forceElevated: true,
            floating: true,
            expandedHeight: 100.0,
            leading: IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(Icons.settings),
            ),
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              title: Text(AppTexts.homePageTitle),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                iconSize: 30,
                icon: const Icon(Icons.add),
              ),
              const SizedBox(width: 10),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  decoration: const BoxDecoration(
                    color: AppColors.chartsBackgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.chartsShadowColor,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: ChartBar(expenses: weeklySpending),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
