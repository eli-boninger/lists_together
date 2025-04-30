import 'package:flutter/material.dart';
import 'package:lists_together/config/dependencies.dart';
import 'package:lists_together/routing/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: providersLocal, child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Lists Together',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 137, 209, 107),
        ),
      ),
      routerConfig: router,
    );
  }
}
