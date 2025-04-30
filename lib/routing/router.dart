import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lists_together/routing/routes.dart';
import 'package:lists_together/ui/core/ui/app_navigation_bar.dart';
import 'package:lists_together/ui/home/view_models/home_viewmodel.dart';
import 'package:lists_together/ui/home/widgets/home_screen.dart';
import 'package:lists_together/ui/list/view_models/list_viewmodel.dart';
import 'package:lists_together/ui/list/widgets/list_screen.dart';
import 'package:provider/provider.dart';

GoRouter router = GoRouter(
  initialLocation: Routes.home.path,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: AppNavigationBar(routerState: state),
        );
      },
      routes: [
        GoRoute(
          path: Routes.home.path,
          name: Routes.home.label,
          builder: (context, state) {
            final viewModel = HomeViewModel(userRepository: context.read());
            return HomeScreen(viewModel: viewModel);
          },
        ),
        GoRoute(
          path: Routes.list.path,
          name: Routes.list.label,
          builder: (context, state) {
            final viewModel = ListViewModel(userListRepository: context.read());
            return ListScreen(
              id: int.parse(state.pathParameters['listId']!),
              viewModel: viewModel,
            );
          },
        ),
      ],
    ),
  ],
);
