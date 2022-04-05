import 'package:flutter/material.dart';
import '../features/home/home_screen_scaffold.dart';

class InsightsScreen extends StatelessWidget {
  const InsightsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenScaffold(
      tab: HomeScreenTab.insights,
      appBar: AppBar(
        title: const Text('Insights'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_today),
          ),
        ],
      ),
      body: const Center(
        child: Text('Insights'),
      ),
    );
  }
}
