import 'package:app_pikbil_mobil/config/router/path_router.dart';
import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:app_pikbil_mobil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  static const String name = 'register-screen';
  const RegisterScreen({super.key});

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
                    InformativeTexts.registerScreenWelcome,
                    textAlign: TextAlign.start,
                    style: CustomText.headlineDark700,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    PathImage.yeah,
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                InformativeTexts.registerScreenWelcomeDescription,
                textAlign: TextAlign.start,
                style: CustomText.headlineBook(CustomColor.gray600, 16),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                obscureText: false,
                textInputType: TextInputType.emailAddress,
                labelText: InformativeTexts.registerScreenFullName,
                placeholder: InformativeTexts.registerScreenFullNamePlaceholder,
              ),
              const CustomTextField(
                obscureText: false,
                textInputType: TextInputType.emailAddress,
                labelText: InformativeTexts.registerScreenEmail,
                placeholder: InformativeTexts.registerScreenEmailPlaceholder,
              ),
              const CustomTextField(
                obscureText: true,
                textInputType: TextInputType.visiblePassword,
                labelText: InformativeTexts.registerScreenPassword,
                placeholder: InformativeTexts.registerScreenPasswordPlaceholder,
                suffixIcon: Icon(Icons.visibility_off_outlined),
              ),
              CustomButton(
                  width: double.infinity,
                  voidCallback: () {
                    context.push(PathRouter.checkEmail);
                  },
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  colorButton: CustomColor.information900,
                  textButton: Text(
                    InformativeTexts.registerScreenRegisterBtn,
                    textAlign: TextAlign.center,
                    style:
                        CustomText.headlineMedium(CustomColor.primary000, 20),
                  )),
              const SizedBox(
                height: 20,
              ),
              const LoginWith(
                redirectSection: InformativeTexts.registerScreenLogin,
                question: InformativeTexts.registerScreenQuestion,
                redirectPath: PathRouter.login,
              )
            ],
          ),
        ),
      ),
    );
  }
}
