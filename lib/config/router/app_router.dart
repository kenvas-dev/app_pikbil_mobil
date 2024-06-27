import 'package:app_pikbil_mobil/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/welcome', routes: [
  GoRoute(
    path: '/welcome',
    name: WelcomeScreen.name,
    builder: (context, state) {
      return WelcomeScreen();
    },
  ),
]);
