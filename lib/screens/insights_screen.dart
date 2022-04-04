import 'package:flutter/material.dart';
import '../views/home/home_screen_tabs.dart';

class InsightsScreen extends StatelessWidget {
  const InsightsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenScaffold(
      tab: HomeScreenTab.insights,
      appBar: AppBar(
        title: const Text('Insights'),
      ),
      body: const Center(
        child: Text('Insights'),
      ),
    );
  }
}
