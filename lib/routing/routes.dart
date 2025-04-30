class AppRoute {
  final String path;
  final String label;
  const AppRoute({required this.path, required this.label});
}

abstract final class Routes {
  static const home = AppRoute(path: '/', label: 'Lists');
  static const AppRoute list = AppRoute(
    path: '/lists/:listId',
    label: 'View All',
  );
}
