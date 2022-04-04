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

// class HomeScreenTabView extends StatelessWidget {
//   final Widget child;
//   const HomeScreenTabView({Key? key, required this.child}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(child: child);
//   }

//   Widget body() {
//     return Container();
//   }

//   PreferredSizeWidget appBar() {
//     return AppBar();
//   }

//   static HomeScreenTabView getView(
//       {required HomeScreenTab tab, required Widget child}) {
//     switch (tab) {
//       case HomeScreenTab.inbox:
//         return InboxView(child: child);
//       case HomeScreenTab.outbox:
//         return OutboxView(child: child);
//       case HomeScreenTab.insights:
//         return InsightsView(child: child);
//     }
//   }
// }

// class HomeScreenViewBuilder extends StatelessWidget {
//   final HomeScreenTab tab;
//   final Widget Function(HomeScreenTabView view) builder;
//   const HomeScreenViewBuilder({ Key? key, required this.tab, required this.builder }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final view = HomeScreenTabView.getView()
//     return Container(

//     );
//   }
// }

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
