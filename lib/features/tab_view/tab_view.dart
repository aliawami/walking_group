import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:walking_group/core/pedometer/health_service.dart';
import 'package:walking_group/features/profile/services/profile_service.dart';

class TabView extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;
  // final List<Widget> children;

  const TabView({
    required this.navigationShell,
    // required this.children,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TabViewState();
}

class _TabViewState extends ConsumerState<TabView> {
  bool initalized = false;

  @override
  Widget build(BuildContext context) {
    ref.watch(profileServiceProvider);
    // final healthService = ref.watch(healthServiceProvider);
    if (!initalized) {
      ref.watch(healthServiceProvider.notifier).authorize();
    }
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: widget.navigationShell.currentIndex,
          onTap: (index) {
            widget.navigationShell.goBranch(index);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_rounded,
                ),
                label: "Profile"),
          ]),
    );
  }
}
