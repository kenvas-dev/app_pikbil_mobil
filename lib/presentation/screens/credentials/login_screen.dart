import 'package:app_pikbil_mobil/config/router/router.dart';
import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:app_pikbil_mobil/presentation/widgets/credentials/login_with.dart';
import 'package:app_pikbil_mobil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  static const String name = 'login-screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
        voidCallback: () => context.push(PathRouter.welcome),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    InformativeTexts.loginScreenWelcome,
                    textAlign: TextAlign.start,
                    style: CustomText.headlineDark700,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    PathImage.ok,
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                InformativeTexts.loginScreenWelcomeDescription,
                textAlign: TextAlign.start,
                style: CustomText.headlineBook(CustomColor.gray600, 16),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                obscureText: false,
                textInputType: TextInputType.emailAddress,
                labelText: InformativeTexts.loginScreenEmail,
                placeholder: InformativeTexts.loginScreenEmailPlaceholder,
              ),
              const CustomTextField(
                obscureText: true,
                textInputType: TextInputType.visiblePassword,
                labelText: InformativeTexts.loginScreenPassword,
                placeholder: InformativeTexts.loginScreenPasswordPlaceholder,
                suffixIcon: Icon(Icons.visibility_off_outlined),
              ),
              CustomButton(
                  width: double.infinity,
                  voidCallback: () {},
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  colorButton: CustomColor.information900,
                  textButton: Text(
                    InformativeTexts.loginScreenLoginBtn,
                    textAlign: TextAlign.center,
                    style: CustomText.headlineMedium(CustomColor.primary000, 20),
                  )),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => context.push(PathRouter.forgotPassword),
                  child: Text(
                    InformativeTexts.loginScreenForgotPassword,
                    style: CustomText.headlineBook(CustomColor.gray600, 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const LoginWith(
                redirectSection: InformativeTexts.loginScreenRegister,
                question: InformativeTexts.loginScreenQuestion,
                redirectPath: PathRouter.register,
              )
            ],
          ),
        ),
      ),
    );
  }
}
