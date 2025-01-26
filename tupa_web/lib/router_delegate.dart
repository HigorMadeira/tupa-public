import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:tupa_web/src/presentation/auth/splash_page.dart';

class CustomRouterDelegate {
  static final BeamerDelegate routerDelegate = BeamerDelegate(
    initialPath: '/',
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '/admin': (context, state, data) => const BeamPage(
              key: ValueKey('HomePage'),
              title: 'Tupã',
              name: 'home',
              child: SplashPage(),
            ),
        '/login': (context, state, data) => const BeamPage(
              key: ValueKey('HomePage'),
              title: 'Tupã',
              name: 'home',
              child: SplashPage(),
            ),
      },
    ).call,
    routeListener: (context, state) {
      debugPrint('Current path: ${context.uri.path}');
    },
  );
}
