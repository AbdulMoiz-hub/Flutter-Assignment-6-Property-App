import 'package:flutter/material.dart';
import 'package:flutter_assignment_6_property_app/routes/route_path.dart';
import 'package:flutter_assignment_6_property_app/screens/home_screen.dart';
import 'package:flutter_assignment_6_property_app/screens/login_screen.dart';
import 'package:flutter_assignment_6_property_app/screens/splash_screen.dart';

class RoutesGenerator {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePath.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case RoutePath.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case RoutePath.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
    }
  }
}

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Page not found'),
      ),
    );
  }
}
