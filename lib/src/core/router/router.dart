import 'package:flutter/cupertino.dart';
import 'package:flutter_healthcare/src/presentation/pages/profile/profile_screen.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/main/main_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    // mainScreen
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainScreen();
      },
      routes: <RouteBase>[
        // profile
        GoRoute(
          path: 'profile',
          builder: (BuildContext context, GoRouterState state) {
            return const ProfileScreen();
          },
        ),
        // product
        GoRoute(
          path: 'detail',
          builder: (BuildContext context, GoRouterState state) {
            return Container();
          },
        ),
      ],
    ),
  ],
);
