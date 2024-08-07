import 'package:fatto/config/routes/routes_enums.dart';
import '../../exports.dart';

class Routes {
  Routes._internal();
  static const String onBoardingRoute = "On Boarding Screen";
  static const String homeSection = "homeSection";
  static const String product35 = "product35";
  static const String productScreen = "productScreen";

  static const String chatRoute = "Chat route";
  static const String splashRoute = "/";
  static const String selectLanguageRoute = "/select language";
  //NewTripsScreen
  static const String notificationsRoute = "/notification Route";
  // static const String profileRoute = "/profile route";
  // static const String helpRoute = "/help route";
  // static const String pickupRoute = "/pickup route";
  static const String bottomNavigationRoute = "bottom Navigation Route";
  static const String pickupRoute = "pickup Route ";
  static const String destinationRoute = "destination Route ";
  // static const String mapScreen = "MapScreen";
  static const String savingTripRoute = "Saving Trip";
  // static const String changePassRoute = "change Pass";
  static const String loginRoute = "login";
  static const String registerRoute = "register";
  static const String forgetPassRoute = "forget Password";
  static const String verificationRoute = "verification";
  static const String doneRoute = "verified Route";
  static const String setPassRoute = "set Password";
  static const String homeRoute = "homeScreen";
  static const String reportRoute = "reportScreen";
  static const String myAccountRoute = "myAccountRoute";
  // static const String faqRoute = "FAQs";
  // static const String faqsDetailsRoute = "faqsDetails";
  // static const String walletRoute = "Wallet";
  //
  static const String newTripRoute = "New Trip";
  static const String captainInfoRoute = "captain Info";
  //
  // static const String updateUsernameRoute = "Update User name Screen";
  //
  // static const String termsAndConditionRoute = "Terms And Condition";
  static const String resetPasswordRoute = "resetPassword";
  // static const String searchingRoute = "searching route";
  static const String selectVehicleRoute = "select vehicle route";
  //
  // static const String chatRoute = "Chat route";
  //*************************** settings rout ********************************/
  static const String personalInformation = "personalInfo";
  static const String editPersonalInformation = "editPersonalInformation";
  static const String fqs = "fqs";
  static const String privacy = "privacy";
  static const String selectPickUpFromMap = "SelectPickUpFromMap";
  static const String selectDestinationFromMap = "SelectDestinationFromMap";
}

class RouteGenerator {
  RouteGenerator._internal();
  AnimationType? pageRouteAnimationGlobal;
  static Duration pageRouteTransitionDurationGlobal = 400.milliseconds;
  static Route<T>? getRoute<T>(RouteSettings routeSettings) {
    debugPrint(routeSettings.name);
    switch (routeSettings.name) {
      // case Routes.splashRoute:
      //   return buildPageRoute<T>(child: const SplashScreen(), routeSettings: routeSettings);
    }
    return buildPageRoute<T>(
        child: const Center(
          child: Text("no route found"),
        ),
        routeSettings: routeSettings);
  }

  static Route<T> buildPageRoute<T>({
    required Widget child,
    AnimationType? pageRouteAnimation = AnimationType.fade,
    Duration? duration,
    RouteSettings? routeSettings,
  }) {
    if (pageRouteAnimation == AnimationType.rotate) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return RotationTransition(
              turns: ReverseAnimation(anim), child: child);
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == AnimationType.scale) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return ScaleTransition(scale: anim, child: child);
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == AnimationType.slide) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return SlideTransition(
            position: Tween(
              begin: const Offset(1.0, 0.0),
              end: const Offset(0.0, 0.0),
            ).animate(anim),
            child: child,
          );
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == AnimationType.slideBottomTop) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return SlideTransition(
            position: Tween(
              begin: const Offset(0.0, 1.0),
              end: const Offset(0.0, 0.0),
            ).animate(anim),
            child: child,
          );
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    }

    return PageRouteBuilder<T>(
      settings: routeSettings,
      transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      reverseTransitionDuration: const Duration(milliseconds: 50),
      pageBuilder: (context, a1, a2) => child,
      transitionsBuilder: (c, anim, a2, child) {
        return FadeTransition(opacity: anim, child: child);
      },
    );
  }
}
