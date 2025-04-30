import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  final Widget pageWidget;
  const AppPage({super.key, required this.pageWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16.0), child: pageWidget);
  }
}
