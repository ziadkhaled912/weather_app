import 'package:flutter/material.dart';
import 'package:weather_app/features/auth/login/presentation/pages/login.dart';
import 'package:weather_app/features/auth/register/presentation/pages/register_page.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/features/auth/splash/presentation/pages/splash_page.dart';
import 'package:weather_app/features/home/presentation/pages/home_page.dart';


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
          const SplashPage(),
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
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
    ),
  ],
);
