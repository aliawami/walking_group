import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:walking_group/features/event_create/views/event_create_view.dart';
import 'package:walking_group/features/tab_view/tab_view.dart';
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
          const NoTransitionPage(child: LoginView()),
      routes: [
        GoRoute(
          path: '/signup',
          builder: (context, state) => const SignupView(),
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          routes: [
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
                GoRoute(
                  path: 'event_joining',
                  builder: (context, state) => const EventJoiningView(),
                ),
              ],
              // const HomeView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: '/profile', builder: (context, state) => ProfileView()),
          ],
        ),
      ],
      builder: (context, state, navigationShell) => TabView(
        navigationShell: navigationShell,
        // children: navigationShell.,
      ),
      // navigatorContainerBuilder: (context, state, children) {
      //   return TabView(
      //     navigationShell: state,
      //     children: children,
      //   );
      // },
    ),

    // GoRoute(
    //   path: '/home',
    //   builder: (context, state) => const HomeView(),
    //   routes: [
    //     GoRoute(
    //       path: 'create_event',
    //       builder: (context, state) => const EventCreateView(),
    //     ),
    //     GoRoute(
    //       path: 'event_details',
    //       builder: (context, state) => const CurrentEventDetailsView(),
    //     ),
    //   ],
    //   // const HomeView(),
    // ),
    // // StatefulShellRoute.indexedStack(
    // //   pageBuilder: (context, state, navigationShell) => NoTransitionPage(
    // //     child: MainScreen(
    //       navigationShell: navigationShell,
    //     ),
    //   ),
    //   branches: [])
  ],
);
