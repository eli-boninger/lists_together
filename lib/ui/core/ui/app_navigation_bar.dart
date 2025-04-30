import 'package:flutter/material.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
          label: 'Lists',
        ),
        NavigationDestination(
          icon: Icon(Icons.landscape_outlined),
          selectedIcon: Icon(Icons.landscape),
          label: 'View all',
        ),
        NavigationDestination(
          icon: Icon(Icons.account_circle_outlined),
          selectedIcon: Icon(Icons.account_circle),
          label: 'Account',
        ),
      ],
    );
  }
}
