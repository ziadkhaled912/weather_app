import 'package:flutter/material.dart';
import 'package:gam3ity/features/auth/login/presentation/pages/login.dart';
import 'package:gam3ity/features/auth/register/presentation/pages/register_page.dart';
import 'package:go_router/go_router.dart';

import '../features/on_boarding/presentation/pages/on_boarding_page.dart';

final router = GoRouter(
  // initialLocation: initialLocation,
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(state.toString()),
    ),
  ),
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const OnBoardingPage(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (BuildContext context, GoRouterState state) => const LoginPage(),
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      builder: (BuildContext context, GoRouterState state) => const RegisterPage(),
    ),
  ],
);
