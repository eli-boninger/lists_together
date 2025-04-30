import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lists_together/routing/router.dart';
import 'package:lists_together/routing/routes.dart';

class AppNavigationBar extends StatefulWidget {
  final GoRouterState routerState;
  const AppNavigationBar({super.key, required this.routerState});

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int currentPageIndex = 0;
  final destinations = [
    NavigationDestination(
      icon: Icon(Icons.home_outlined),
      selectedIcon: Icon(Icons.home),
      label: Routes.home.label,
    ),
    NavigationDestination(
      icon: Icon(Icons.landscape_outlined),
      selectedIcon: Icon(Icons.landscape),
      label: Routes.list.label,
    ),
    NavigationDestination(
      icon: Icon(Icons.account_circle_outlined),
      selectedIcon: Icon(Icons.account_circle),
      label: 'Account',
    ),
  ];

  @override
  void initState() {
    super.initState();
    currentPageIndex = destinations.indexWhere(
      (d) => d.label == widget.routerState.topRoute?.name,
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(currentPageIndex);
    return NavigationBar(
      destinations: destinations,
      selectedIndex: currentPageIndex == -1 ? 0 : currentPageIndex,
      onDestinationSelected: (value) {
        currentPageIndex = value;
        switch (value) {
          case 0:
            router.go('/');
            break;
          default:
        }
      },
    );
  }
}
