import 'package:go_router/go_router.dart';
import 'package:lists_together/ui/home/widgets/home_screen.dart';

GoRouter router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => HomeScreen())],
);
