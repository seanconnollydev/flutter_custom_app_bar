import 'package:flutter/material.dart';

import 'home_app_bar.dart';
import 'home_screen_tabs.dart';

class InboxView extends HomeScreenTabView {
  const InboxView() : super(tab: HomeScreenTab.inbox);

  @override
  Widget body(context) {
    return const _InboxBody();
  }

  @override
  PreferredSizeWidget appBar(context) {
    return HomeAppBar(
      title: const Text('Inbox'),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      ],
    );
  }
}

class _InboxBody extends StatelessWidget {
  const _InboxBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Inbox'),
    );
  }
}
