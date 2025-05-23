import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:walking_group/features/event_create/views/event_create_view.dart';
import 'package:walking_group/features/features.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final routers = GoRouter(
  initialLocation: '/',
  navigatorKey: rootNavigatorKey,
  routes: [
    GoRoute(
      path: '/',
      parentNavigatorKey: rootNavigatorKey,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: HomeView()),
      // routes: [
      //   GoRoute(
      //     path: 'signup',
      //     builder: (context, state) => const SignupView(),
      //   ),
      // ],
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignupView(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeView(),
      routes: [
        GoRoute(
          path: 'create_event',
          builder: (context, state) => const EventCreateView(),
        ),
        GoRoute(
          path: 'event_details',
          builder: (context, state) => const CurrentEventDetailsView(),
        ),
      ],
      // const HomeView(),
    ),
    // StatefulShellRoute.indexedStack(
    //   pageBuilder: (context, state, navigationShell) => NoTransitionPage(
    //     child: MainScreen(
    //       navigationShell: navigationShell,
    //     ),
    //   ),
    //   branches: [])
  ],
);
