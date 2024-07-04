import 'package:app_pikbil_mobil/config/router/router.dart';
import 'package:app_pikbil_mobil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/static/static.dart';

class ChangePasswordScreen extends StatelessWidget {
  static const String name = 'change-password-screen';

  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          ProfileAppBar(voidCallback: () => context.push(PathRouter.profile)),
      body: MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          removeTop: true,
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  InformativeTexts.changePasswordScreenChangePassword,
                  textAlign: TextAlign.start,
                  style: CustomText.headlineDark700,
                ),
                CustomTextField(
                  obscureText: true,
                  textInputType: TextInputType.visiblePassword,
                  labelText: InformativeTexts.changePasswordScreenOldPassword,
                  placeholder: InformativeTexts
                      .changePasswordScreenOldPasswordPlaceholder,
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                ),
                CustomTextField(
                  obscureText: true,
                  textInputType: TextInputType.visiblePassword,
                  labelText: InformativeTexts.changePasswordScreenNewPassword,
                  placeholder: InformativeTexts
                      .changePasswordScreenNewPasswordPlaceholder,
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                ),
                CustomTextField(
                  obscureText: true,
                  textInputType: TextInputType.visiblePassword,
                  labelText:
                      InformativeTexts.changePasswordScreenNewPasswordRetype,
                  placeholder: InformativeTexts
                      .changePasswordScreenNewPasswordRetypePlaceholder,
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                ),
              ],
            ),
          )),
      floatingActionButton: CustomFloatingButton(
          alignment: Alignment.bottomCenter,
          voidCallback: () {},
          margin: const EdgeInsetsDirectional.only(bottom: 20),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          colorButton: CustomColor.primary900,
          textButton: const Text(
              InformativeTexts.changePasswordScreenChangePassword,
              textAlign: TextAlign.center,
              style: CustomText.headlineWhite500)),
    );
  }
}
