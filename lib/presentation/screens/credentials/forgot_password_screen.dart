import 'package:app_pikbil_mobil/config/router/router.dart';
import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:app_pikbil_mobil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String name = 'forgot-password-screen';
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
        voidCallback: () => context.push(PathRouter.login),
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
                    InformativeTexts.forgotPassScreenWelcome,
                    textAlign: TextAlign.start,
                    style: CustomText.headlineDark700,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    PathImage.loked,
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                InformativeTexts.forgotPassScreenWelcomeDescription,
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
              CustomButton(
                  width: double.infinity,
                  voidCallback: () {},
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  colorButton: CustomColor.information900,
                  textButton: Text(
                    InformativeTexts.forgotPassScreenRecoverAccount,
                    textAlign: TextAlign.center,
                    style:
                        CustomText.headlineMedium(CustomColor.primary000, 20),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
