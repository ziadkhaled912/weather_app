import 'package:flutter/material.dart';

class SplashPageBody extends StatelessWidget {
  const SplashPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(size: 100),
      ),
    );
  }
}
