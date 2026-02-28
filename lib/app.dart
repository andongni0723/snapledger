import 'package:flutter/material.dart';
import 'package:snapledger/core/theme/typography.dart';
import 'package:easy_localization/easy_localization.dart';
import 'core/routing/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Snap Ledger',
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        brightness: Brightness.light,
        fontFamily: AppTypography.fontFamily,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        brightness: Brightness.dark,
        fontFamily: AppTypography.fontFamily,
      ),
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}