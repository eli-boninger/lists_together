import 'package:go_router/go_router.dart';
import 'package:lists_together/routing/routes.dart';
import 'package:lists_together/ui/home/view_models/home_viewmodel.dart';
import 'package:lists_together/ui/home/widgets/home_screen.dart';
import 'package:provider/provider.dart';

GoRouter router = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.home,
      builder: (context, state) {
        final viewModel = HomeViewModel(userRepository: context.read());
        viewModel.loadUserCommand.execute(1);
        return HomeScreen(viewModel: viewModel);
      },
    ),
  ],
);
