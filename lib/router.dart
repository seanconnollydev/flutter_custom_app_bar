import 'package:flutter/material.dart';
import 'package:flutter_custom_app_bar/screens/inbox_screen.dart';
import 'package:flutter_custom_app_bar/screens/insights_screen.dart';
import 'package:flutter_custom_app_bar/screens/outbox_screen.dart';
import 'package:go_router/go_router.dart';

import 'features/home/home_screen_scaffold.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: <GoRoute>[
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        final args = state.extra as HomeScreenArguments? ??
            HomeScreenArguments(HomeScreenTab.inbox);

        switch (args.tab) {
          case HomeScreenTab.inbox:
            return const InboxScreen();
          case HomeScreenTab.outbox:
            return const OutboxScreen();
          case HomeScreenTab.insights:
            return const InsightsScreen();
        }
      },
    ),
  ],
);
