import 'package:flutter/material.dart';

import 'core/router/app_router.dart';
import 'core/router/routes_name.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      title: 'Evently App',
      initialRoute: RouteName.splash,
      routes: AppRouter.routes,
    );
  }
}
