import 'package:evently/core/router/routes_name.dart';
import 'package:flutter/material.dart';

import '../../features/splash/screens/splash_screen.dart';

abstract class AppRouter {
  static Map<String, Widget Function(BuildContext)> routes = {
    RouteName.splash: (_) => const SplashScreen(),
  };
}
