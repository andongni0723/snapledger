import 'package:flutter/material.dart';
import 'package:snapledger/shared/pages/analytics_page.dart';
import 'package:snapledger/shared/pages/details_page.dart';
import 'package:snapledger/shared/pages/overview_page.dart';
import 'package:snapledger/shared/pages/settings_page.dart';
import 'package:snapledger/shared/widgets/app_navigation_bar.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [OverviewPage(), AnalyticsPage(), DetailsPage(), SettingsPage()];
    return Scaffold(
        bottomNavigationBar: appNavigationBar(
          selectedIndex: _page,
          onDestinationSelected: (index) => setState(() => _page = index),
        ),
        body: IndexedStack(index: _page, children: pages),
    );
  }
}