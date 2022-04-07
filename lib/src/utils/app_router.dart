import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_test/src/screens/add_location/add_location_screen.dart';
import 'package:weather_app_test/src/screens/auth/sign_in_screen.dart';
import 'package:weather_app_test/src/screens/auth/sign_up_screen.dart';
import 'package:weather_app_test/src/screens/home_screen.dart';

class AppRouter {
  static List _navStackInfo = [];

  static showLoginScreen(BuildContext context) {
    _push(
      context,
      SignInScreen(),
    );
  }

  static showRegisterScreen(BuildContext context) {
    _push(
      context,
      SignUpScreen(),
    );
  }

  static showHomeScreen(BuildContext context) {
    _push(
      context,
      const HomeScreen(),
    );
  }

  static showAddLocationScreen(BuildContext context) {
    _push(
      context,
      AddLocationScreen(),
    );
  }

  static void pop(BuildContext ctx, [dynamic result]) {
    if (_navStackInfo.isNotEmpty) _navStackInfo.removeLast();
    Navigator.of(ctx).pop(result);
    if (!kReleaseMode) _logNavStack();
  }

  static void popTwoTimes(BuildContext ctx, [dynamic result]) {
    if (_navStackInfo.isNotEmpty) _navStackInfo.removeLast();
    Navigator.of(ctx).pop(result);
    Navigator.of(ctx).pop(result);
    if (!kReleaseMode) _logNavStack();
  }

  static void popUntil(
    BuildContext ctx,
    bool Function(Route<dynamic>) predicate,
  ) {
    _navStackInfo.add('-- POP UNTIL X --');
    Navigator.of(ctx).popUntil(predicate);
    if (!kReleaseMode) _logNavStack();
  }

  static Future<dynamic> _push(
    BuildContext ctx,
    Widget screen, {
    String? routeName,
    bool replaceRoute = false,
    bool customRouteAnimation = true,
    bool reverseRouteAnimation = true,
    RoutePredicate? until,
  }) async {
    routeName ??= screen.runtimeType.toString();

    if (until != null) {
      _navStackInfo.add('-- POP UNTIL X --');
    } else if (replaceRoute) {
      if (_navStackInfo.isNotEmpty) _navStackInfo.removeLast();
    }
    _navStackInfo.add(routeName + (replaceRoute ? ' (REPLACED)' : ''));

    final settings = RouteSettings(name: '/$routeName');
    final pageRoute = _getPageRoute(
      screen,
      settings,
      customRouteAnimation,
      reverseRouteAnimation,
    );

    if (!kReleaseMode) _logNavStack();

    if (until != null) {
      return Navigator.of(ctx).pushAndRemoveUntil(
        pageRoute,
        until,
      );
    } else if (replaceRoute) {
      return Navigator.of(ctx).pushReplacement(pageRoute);
    } else {
      return Navigator.of(ctx).push(pageRoute);
    }
  }

  static PageRouteBuilder _getPageRoute(
    Widget page,
    RouteSettings settings,
    bool customRouteAnimation,
    bool reverseRouteAnimation,
  ) {
    if (!customRouteAnimation) {
      return PageRouteBuilder(
        pageBuilder: (ctx, animation, secondaryAnimation) => page,
        settings: settings,
      );
    }

    if (reverseRouteAnimation) {
      if (Platform.isIOS) {
        return _reverseIosRouteAnimation(page, settings);
      }
    }

    if (Platform.isIOS) {
      return _iosRouteAnimation(page, settings);
    } else {
      return _androidRouteAnimation(page, settings);
    }
  }

  static PageRouteBuilder _androidRouteAnimation(
    Widget page,
    RouteSettings settings,
  ) {
    return PageRouteBuilder(
      pageBuilder: (ctx, animation, secondaryAnimation) => page,
      settings: settings,
      transitionsBuilder: (ctx2, animation, anotherAnimation, child) {
        animation = CurvedAnimation(curve: Curves.ease, parent: animation);
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }

  static PageRouteBuilder _iosRouteAnimation(
    Widget page,
    RouteSettings settings,
  ) {
    return PageRouteBuilder(
      pageBuilder: (ctx2, animation, secondaryAnimation) => page,
      settings: settings,
      transitionsBuilder: (ctx3, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  }

  static PageRouteBuilder _reverseIosRouteAnimation(
    Widget page,
    RouteSettings settings,
  ) {
    return PageRouteBuilder(
      pageBuilder: (ctx, animation, secondaryAnimation) => page,
      settings: settings,
      transitionsBuilder: (ctx2, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  }

  static void _logNavStack() {
    // developer.log('NAV: ${_navigationStack.join(' > ')}');
  }
}
