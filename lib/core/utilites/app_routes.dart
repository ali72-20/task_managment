import 'package:go_router/go_router.dart';
import 'package:task_managment/features/login/presentation_layer/login_screen.dart';
import 'package:task_managment/features/start_screen/presentation_layer/start_screen.dart';

abstract class AppRoutes {
  static const kStartPath = '/';
  static const kLoginPath = '/login';
  static const kRegisterPath = '/register';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kStartPath,
        builder: (context, state) => const StartScreen(),
      ),
      GoRoute(
        path: kLoginPath,
        builder: (context, state) => const LogInScreen(),
      ),
      GoRoute(
        path: kRegisterPath,
        builder: (context, state) => const LogInScreen(),
      ),
    ],
  );
}
