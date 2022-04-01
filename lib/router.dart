import 'package:flutter/material.dart';
import 'package:flutter_custom_app_bar/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

import 'views/home/home_screen_tabs.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        final args = state.extra as HomeScreenArguments? ??
            HomeScreenArguments(HomeScreenTab.inbox);
        return HomeScreen(args: args);
      },
    ),
  ],
);