import 'package:flutter/material.dart';
import 'package:flutter_custom_app_bar/screens/home_screen.dart';
import 'package:flutter_custom_app_bar/screens/inbox_screen.dart';
import 'package:flutter_custom_app_bar/screens/insights_screen.dart';
import 'package:flutter_custom_app_bar/screens/outbox_screen.dart';
import 'package:go_router/go_router.dart';

import 'views/home/home_screen_tabs.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    // GoRoute(
    //   path: '/',
    //   builder: (BuildContext context, GoRouterState state) {
    //     final args = state.extra as HomeScreenArguments? ??
    //         HomeScreenArguments(HomeScreenTab.inbox);
    //     return HomeScreen(key: state.pageKey, args: args);
    //   },
    // ),
    GoRoute(path: '/', redirect: (state) => '/home/inbox'),
    GoRoute(
      path: '/home/:tab',
      builder: (BuildContext context, GoRouterState state) {
        print('tab: ${state.path}');
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
    // GoRoute(
    //   path: '/inbox',
    //   builder: (context, state) => InboxScreen(key: state.pageKey),
    // ),
    // GoRoute(
    //   path: '/outbox',
    //   builder: (context, state) => OutboxScreen(key: state.pageKey),
    // ),
    // GoRoute(
    //   path: '/insights',
    //   builder: (context, state) => InsightsScreen(key: state.pageKey),
    // ),
  ],
);
