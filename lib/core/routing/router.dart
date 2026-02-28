import 'package:go_router/go_router.dart';
import 'package:snapledger/shared/pages/app_shell.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, _) => AppShell(),
    ),
  ],
);
