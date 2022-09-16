import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/presentation/widgets/app_snack_bar.dart';
import 'package:weather_app/core/presentation/widgets/no_data_widget.dart';
import 'package:weather_app/di/injection_container.dart';
import 'package:weather_app/features/auth/core/persentation/cubit/auth_cubit.dart';
import 'package:weather_app/features/auth/core/persentation/cubit/auth_state.dart';
import 'package:weather_app/features/home/presentation/bloc/home_cubit.dart';
import 'package:weather_app/features/home/presentation/bloc/home_state.dart';
import 'package:weather_app/features/home/presentation/widgets/data_row_build_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeCubit _cubit;
  late final AuthCubit _authCubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<HomeCubit>();
    _authCubit = getIt<AuthCubit>();
    _determinePosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather"),
        leading: BlocConsumer<AuthCubit, AuthState>(
          bloc: _authCubit,
          listener: (context, state) {
            state.maybeWhen(
              success: () => GoRouter.of(context).goNamed("login"),
              error: (_) => GoRouter.of(context).goNamed("login"),
              orElse: () {},
            );
          },
          builder: (context, state) => IconButton(
            icon: state is Loading ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator()) : const Icon(Icons.logout),
            onPressed: () async {
              _authCubit.logout();
            },
          ),
        ),
      ),
      body: Center(
        child: BlocBuilder<HomeCubit, HomeState>(
          bloc: _cubit,
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const CircularProgressIndicator(),
              error: (messages) => NoDataWidget(
                  text: messages,
                  onPressed: () async => await _determinePosition()),
              weatherSuccess: (weather) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "${weather.temp.toInt()}C",
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          ?.copyWith(fontSize: 40),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      weather.location,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(height: 25),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DataRowBuildItem(
                              title: "Real feel",
                              title2: "Humidity",
                              value1: "${weather.feelsLike.toInt()}C",
                              value2: "${weather.humidity}%",
                            ),
                            const SizedBox(height: 10),
                            DataRowBuildItem(
                              title: "Wind speed",
                              title2: "Chance of rain",
                              value1: "${weather.windSpeed}km/h",
                              value2: "0%",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      showErrorSnackBar('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        showErrorSnackBar('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      showErrorSnackBar(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    final position = await Geolocator.getCurrentPosition();
    _cubit.getCurrentWeather(position.longitude, position.latitude);
  }

  void showErrorSnackBar(String text) => showSnackBar(
        context: context,
        text: text,
        snackBarState: SnackBarState.error,
      );
}
