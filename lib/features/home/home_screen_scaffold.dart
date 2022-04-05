import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          context.go('/home', extra: HomeScreenArguments(tab));
        },
        items: _buildBottomNavigationBarItems(),
      ),
    );
  }
}

class HomeScreenArguments {
  final HomeScreenTab tab;

  HomeScreenArguments(this.tab);
}

enum HomeScreenTab { inbox, outbox, insights }

List<BottomNavigationBarItem> _buildBottomNavigationBarItems() {
  return HomeScreenTab.values.map((tab) {
    return _buildBottomNavigationItemForTab(tab);
  }).toList();
}

BottomNavigationBarItem _buildBottomNavigationItemForTab(HomeScreenTab tab) {
  switch (tab) {
    case HomeScreenTab.inbox:
      return const BottomNavigationBarItem(
        icon: Icon(Icons.mail),
        label: 'Inbox',
      );
    case HomeScreenTab.outbox:
      return const BottomNavigationBarItem(
        icon: Icon(Icons.send),
        label: 'Outbox',
      );
    case HomeScreenTab.insights:
      return const BottomNavigationBarItem(
        icon: Icon(Icons.insights),
        label: 'Insights',
      );
  }
}
