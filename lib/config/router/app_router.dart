import 'package:app_pikbil_mobil/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/welcome', routes: [
  GoRoute(
    path: '/welcome',
    name: WelcomeScreen.name,
    builder: (context, state) {
      return const WelcomeScreen();
    },
  ),
  GoRoute(
      path: '/profile',
      name: ProfileScreen.name,
      builder: (context, state) {
        return const ProfileScreen();
      },
      routes: [
        GoRoute(
          path: '/account',
          name: AccountScreen.name,
          builder: (context, state) {
            return const AccountScreen();
          },
        ),
        GoRoute(
          path: '/billing',
          name: BillingScreen.name,
          builder: (context, state) {
            return const BillingScreen();
          },
        ),
        GoRoute(
          path: '/change-password',
          name: ChangePasswordScreen.name,
          builder: (context, state) {
            return const ChangePasswordScreen();
          },
        ),
      ])
]);
