import 'package:flutter/material.dart';
import 'package:flutter_custom_app_bar/screens/home_screen.dart';
import 'package:flutter_custom_app_bar/screens/inbox_screen.dart';
import 'package:flutter_custom_app_bar/screens/insights_screen.dart';
import 'package:flutter_custom_app_bar/screens/outbox_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      redirect: (state) => '/inbox',
    ),
    GoRoute(
      path: '/inbox',
      builder: (context, state) => const InboxScreen(),
    ),
    GoRoute(
      path: '/outbox',
      builder: (context, state) => const OutboxScreen(),
    ),
    GoRoute(
      path: '/insights',
      builder: (context, state) => const InsightsScreen(),
    ),
  ],
);
