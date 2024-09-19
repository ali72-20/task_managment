import 'package:go_router/go_router.dart';
import 'package:task_managment/features/home/presentation_layer/home_screen.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/edit_taks_ui.dart';
import 'package:task_managment/features/start_screen/presentation_layer/start_screen.dart';
import '../../features/forms/presentation_layer/login_screen.dart';
import '../../features/forms/presentation_layer/register_screen.dart';

abstract class AppRoutes {
  static const kStartPath = '/';
  static const kLoginPath = '/login';
  static const kRegisterPath = '/register';
  static const kHomePath = '/home';
  static const kEditPath = '/edit';
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
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: kHomePath,
        builder: (context, state) =>  HomeScreen(),
      ),
    ],
  );
}
