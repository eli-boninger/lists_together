import 'package:flutter/material.dart';
import 'package:lists_together/domain/models/user/user.dart';
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
    return ListenableBuilder(
      listenable: widget.viewModel.loadUserCommand,
      builder: (BuildContext context, _) {
        if (widget.viewModel.user == null) {
          return Text('unloaded');
        }
        return Text(widget.viewModel.user!.name);
      },
    );
  }
}
