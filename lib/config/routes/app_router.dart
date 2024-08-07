


import 'package:fatto/config/routes/name_routes.dart';
import 'package:fatto/exports.dart';
import 'package:fatto/features/Auth/login/presentation/login_screen.dart';

class FattoRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (context) => const FirstOnBoardingScreen(),
        );
        case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text(
                "No route defined for ${settings.name}",
              ),
            ),
          ),
        );
    }
  }
}
// The code snippet is a class named AppRouter that contains a method
// generateRoute which determines the route to be displayed based
// on the provided settings.
// The method generateRoute takes a settings object as input.
// It checks the name property of the settings object using a switch statement.
// If the name matches Routes.onBoardingScreen, it returns a
// MaterialPageRoute with a screen.
// If the name matches Routes.loginScreen, it returns a
// MaterialPageRoute with a screen.
// If no match is found, it returns a MaterialPageRoute with a Scaffold
// displaying a message indicating the route name that was not defined.
