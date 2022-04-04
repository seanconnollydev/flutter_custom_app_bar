import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'inbox_view.dart';
import 'insights_view.dart';
import 'outbox_view.dart';

class HomeScreenScaffold extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final Widget body;
  final HomeScreenTab tab;
  const HomeScreenScaffold({
    Key? key,
    required this.tab,
    required this.appBar,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tab.index,
        onTap: (index) {
          final tab = HomeScreenTab.values.firstWhere((t) => t.index == index);
          final route = _getRoute(tab);
          try {
            context.pop();
          } catch (e) {}
          context.go(route);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Outbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insights),
            label: 'Insights',
          ),
        ],
      ),
    );
  }
}

class HomeScreenTabView {
  final HomeScreenTab tab;
  const HomeScreenTabView({required this.tab});

  Widget container({required Widget child}) {
    return Container(child: child);
  }

  PreferredSizeWidget appBar(BuildContext context) {
    return AppBar();
  }

  Widget body(BuildContext context) {
    return Container();
  }

  static HomeScreenTabView getView({required HomeScreenTab tab}) {
    switch (tab) {
      case HomeScreenTab.inbox:
        return const InboxView();
      case HomeScreenTab.outbox:
        return const OutboxView();
      case HomeScreenTab.insights:
        return const InsightsView();
    }
  }
}

enum HomeScreenTab { inbox, outbox, insights }

String _getRoute(HomeScreenTab tab) {
  switch (tab) {
    case HomeScreenTab.inbox:
      return '/inbox';
    case HomeScreenTab.outbox:
      return '/outbox';
    case HomeScreenTab.insights:
      return '/insights';
  }
}
