import 'package:app_pikbil_mobil/config/router/router.dart';
import 'package:app_pikbil_mobil/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter =
    GoRouter(initialLocation: PathRouter.initialLocation, routes: [
  GoRoute(
    path: PathRouter.welcome,
    name: WelcomeScreen.name,
    builder: (context, state) {
      return const WelcomeScreen();
    },
  ),
  GoRoute(
    path: PathRouter.profile,
    name: ProfileScreen.name,
    builder: (context, state) {
      return const ProfileScreen();
    },
  ),
  GoRoute(
    path: PathRouter.account,
    name: AccountScreen.name,
    builder: (context, state) {
      return const AccountScreen();
    },
  ),
  GoRoute(
    path: PathRouter.billing,
    name: BillingScreen.name,
    builder: (context, state) {
      return const BillingScreen();
    },
  ),
  GoRoute(
    path: PathRouter.changePassword,
    name: ChangePasswordScreen.name,
    builder: (context, state) {
      return const ChangePasswordScreen();
    },
  ),
  GoRoute(
    path: PathRouter.notification,
    name: NotificationScreen.name,
    builder: (context, state) {
      return const NotificationScreen();
    },
  ),
]);
