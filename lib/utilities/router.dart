import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/on_boarding/presentation/pages/on_boarding_page.dart';

GoRouter router({
  String? initialLocation,
}) {
  return GoRouter(
    initialLocation: initialLocation,
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const OnBoardingPage(),
      ),
    ],
  );
}
