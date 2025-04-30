import 'package:flutter/material.dart';
import 'package:lists_together/ui/core/ui/app_page.dart';
import 'package:lists_together/ui/home/view_models/home_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.viewModel.loadUserCommand.results,
      builder: (BuildContext context, result, _) {
        if (result.isExecuting) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (!result.hasData) {
          // TODO: handle error
        }
        return AppPage(
          pageWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome', style: Theme.of(context).textTheme.headlineLarge),
              Text(
                result.data!.name,
                style: Theme.of(context).textTheme.bodyLarge,
                selectionColor: Theme.of(context).splashColor,
              ),
            ],
          ),
        );
      },
    );
  }
}
