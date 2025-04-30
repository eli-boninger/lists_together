import 'package:flutter/material.dart';
import 'package:lists_together/config/dependencies.dart';
import 'package:lists_together/routing/router.dart';
import 'package:lists_together/ui/core/themes/theme.dart';
import 'package:lists_together/ui/core/themes/util.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: providersLocal, child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = createTextTheme(
      context,
      "Lexend Deca",
      "Libre Baskerville",
    );

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp.router(
      title: 'Lists Together',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      routerConfig: router,
    );
  }
}
