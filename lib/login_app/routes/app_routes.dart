import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_screen.dart';
import '../screens/job_application/job_application_form.dart';
import '../screens/login/failuare_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/login/success_screen.dart';
import '../screens/registration/register_screen.dart';

class AppRoutes {
  // Step 1 : Define route name
  static const String homeScreenRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String loginFailedRoute = "/loginFailed";
  static const String loginSuccessRoute = "/loginSuccess";
  static const String jobApplicationFormRoute = "/jobApplicationForm";

  // Step 2 : To get the route call this static function
  static Route<dynamic> genarateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final Object? argumnets = settings.arguments;

    switch (settings.name) {
      case homeScreenRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => HomeScreen(),
        );

      case loginRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => LoginScreen(),
        );

      case registerRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => RegistrationScreen(),
        );

      case loginFailedRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => FailureScreen(),
        );

      case loginSuccessRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => SuccessScreen(),
        );

      case jobApplicationFormRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => JobApplicationFormScreen(),
        );

      default:
        return _errorRoute();
    }
  }

  // In case no param is passed or wrong param is passed then redirect to error page
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (BuildContext context) =>
          Scaffold(appBar: AppBar(title: Text("Error route"))),
    );
  }
}
