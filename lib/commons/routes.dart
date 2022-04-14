import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/login_page.dart';

class Routes {
  Routes._();

  static const String home = '/';
  static const String login = '/login';

  static Route<dynamic>? router(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute<dynamic>(builder: (_) => const HomePage());
      case login:
        return MaterialPageRoute<dynamic>(builder: (_) => const LoginPage());
    }

    return MaterialPageRoute<dynamic>(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('No route defined for ${settings.name}'),
        ),
      ),
    );
  }
}
