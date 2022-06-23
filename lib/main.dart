import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gam3ity/utilities/router.dart';
import 'package:go_router/go_router.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gam3ity',
      debugShowCheckedModeBanner: false,
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routeInformationProvider: router().routeInformationProvider,
      routeInformationParser: router().routeInformationParser,
      routerDelegate: router().routerDelegate,
      // locale: ,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
