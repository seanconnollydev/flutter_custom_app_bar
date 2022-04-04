import 'package:flutter/material.dart';

import 'home_app_bar.dart';
import 'home_screen_tabs.dart';

class InsightsView extends HomeScreenTabView {
  const InsightsView() : super(tab: HomeScreenTab.outbox);

  @override
  Widget body(context) {
    return const _InsightsBody();
  }

  @override
  PreferredSizeWidget appBar(context) {
    return HomeAppBar(
      title: const Text('Insights'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.calendar_today),
        ),
      ],
    );
  }
}

class _InsightsBody extends StatelessWidget {
  const _InsightsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Insights'),
    );
  }
}
