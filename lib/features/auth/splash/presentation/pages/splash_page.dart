import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/di/injection_container.dart';
import 'package:weather_app/features/auth/core/persentation/cubit/auth_cubit.dart';
import 'package:weather_app/features/auth/core/persentation/cubit/auth_state.dart';
import 'package:weather_app/features/auth/login/presentation/pages/login.dart';
import 'package:weather_app/features/auth/splash/presentation/widgets/splash_page_body.dart';
import 'package:weather_app/features/home/presentation/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..checkAuthStatus(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) => state.maybeWhen(
          unauthorized: () => const LoginPage(),
          authorized: () => const HomePage(),
          orElse: () => const SplashPageBody(),
        ),
      ),
    );
  }
}
