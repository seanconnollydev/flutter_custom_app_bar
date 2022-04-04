import 'package:flutter/material.dart';

import 'home_app_bar.dart';
import 'home_screen_tabs.dart';

class OutboxView extends HomeScreenTabView {
  const OutboxView() : super(tab: HomeScreenTab.outbox);

  @override
  Widget container({required Widget child}) {
    return DefaultTabController(length: 3, child: child);
  }

  @override
  Widget body(context) {
    return const _OutboxBody();
  }

  @override
  PreferredSizeWidget appBar(context) {
    return HomeAppBar(
      bottom: const TabBar(
        tabs: [
          Tab(text: 'Sent'),
          Tab(text: 'Scheduled'),
          Tab(
            text: 'Draft',
          )
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
      ],
    );
  }
}

class _OutboxBody extends StatelessWidget {
  const _OutboxBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        Center(
          child: Text('Sent'),
        ),
        Center(
          child: Text('Scheduled'),
        ),
        Center(
          child: Text('Draft'),
        ),
      ],
    );
  }
}
