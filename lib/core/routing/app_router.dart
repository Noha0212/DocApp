import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/features/login/ui/login_screen.dart';
import 'package:doc_doc/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.logInScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        // If no route matches, show an error screen
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
