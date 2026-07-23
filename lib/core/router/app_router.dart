import 'package:evently/core/router/routes_name.dart';
import 'package:flutter/material.dart';

import '../../features/authentication/screens/login/login_screen.dart';
import '../../features/configuration/configuration_screen.dart';
import '../../features/splash/splash_screen.dart';

abstract class AppRouter {
  static Map<String, Widget Function(BuildContext)> routes = {
    RouteName.splash: (_) => const SplashScreen(),
    RouteName.configuration: (_) => const ConfigurationScreen(),
    RouteName.login: (_) => const LoginScreen(),
    // RouteName.register: (_) => const RegisterScreen(),
    // RouteName.forgotPassword: (_) => const ForgotPasswordScreen(),
  };
}
