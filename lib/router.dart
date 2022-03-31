import 'package:flutter/material.dart';
import 'package:flutter_custom_app_bar/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    ),
  ],
);
