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
  GoRoute(
    path: PathRouter.login,
    name: LoginScreen.name,
    builder: (context, state) {
      return const LoginScreen();
    },
  ),
  GoRoute(
    path: PathRouter.register,
    name: RegisterScreen.name,
    builder: (context, state) {
      return const RegisterScreen();
    },
  ),
  GoRoute(
    path: PathRouter.checkEmail,
    name: CheckEmailScreen.name,
    builder: (context, state) {
      return const CheckEmailScreen();
    },
  ),
  GoRoute(
    path: PathRouter.forgotPassword,
    name: ForgotPasswordScreen.name,
    builder: (context, state) {
      return const ForgotPasswordScreen();
    },
  ),
  GoRoute(
    path: PathRouter.createPassword,
    name: CreateNewPasswordScreen.name,
    builder: (context, state) {
      return const CreateNewPasswordScreen();
    },
  )
]);
