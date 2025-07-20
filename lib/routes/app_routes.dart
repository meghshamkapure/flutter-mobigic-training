import 'package:codex_login/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import '../screens/grid/grid_screen_home.dart';
import '../screens/home/home.dart';
import '../screens/jobs/jobs_application_form.dart';
import '../screens/jobs/jobs_login.dart';
import '../screens/jobs/jobs_login_failure.dart';
import '../screens/jobs/jobs_login_success.dart';
import '../screens/jobs/jobs_register_screen.dart';
import '../time_operations/date_operations.dart';

class AppRoutes {
  static const String splashScreen = "/splashScreen";
  static const String homeScreenRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String loginFailedRoute = "/loginFailed";
  static const String loginSuccessRoute = "/loginSuccess";
  static const String jobApplicationFormRoute = "/jobApplicationForm";
  static const String dateOperationsRoute = "/dateOperations";
  static const String gridLayoutRoute = "/gridLayoutRoute";

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case homeScreenRoute:
        return MaterialPageRoute(builder: (_) => const AppIndexHome());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case registerRoute:
        return MaterialPageRoute(builder: (_) => RegistrationScreen());
      case loginFailedRoute:
        return MaterialPageRoute(builder: (_) => const FailureScreen());
      case loginSuccessRoute:
        return MaterialPageRoute(builder: (_) => const SuccessScreen());
      case jobApplicationFormRoute:
        return MaterialPageRoute(
          builder: (_) => const JobApplicationFormScreen(),
        );
      case dateOperationsRoute:
        return MaterialPageRoute(builder: (_) => const DateOperations());
      case gridLayoutRoute:
        return MaterialPageRoute(builder: (_) => const AppRootCalenderGrid());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text('Error')),
            body: const Center(child: Text('Route not found')),
          ),
        );
    }
  }
}
