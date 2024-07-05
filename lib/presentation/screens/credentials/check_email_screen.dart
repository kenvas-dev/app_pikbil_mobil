import 'package:app_pikbil_mobil/config/router/router.dart';
import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:app_pikbil_mobil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CheckEmailScreen extends StatelessWidget {
  static const String name = 'check-email-screen';
  const CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;

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
                    InformativeTexts.checkEmailScreenWelcome,
                    textAlign: TextAlign.start,
                    style: CustomText.headlineDark700,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    PathImage.flag,
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                InformativeTexts.checkEmailScreenWelcomeDescription,
                textAlign: TextAlign.start,
                style: CustomText.headlineBook(CustomColor.gray600, 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: widthSize * 0.20,
                    child: const CustomTextField(
                      obscureText: false,
                      textInputType: TextInputType.number,
                      labelText: '',
                      placeholder: '',
                    ),
                  ),
                  SizedBox(
                    width: widthSize * 0.20,
                    child: const CustomTextField(
                      obscureText: false,
                      textInputType: TextInputType.number,
                      labelText: '',
                      placeholder: '',
                    ),
                  ),
                  SizedBox(
                    width: widthSize * 0.20,
                    child: const CustomTextField(
                      obscureText: false,
                      textInputType: TextInputType.number,
                      labelText: '',
                      placeholder: '',
                    ),
                  ),
                  SizedBox(
                    width: widthSize * 0.20,
                    child: const CustomTextField(
                      obscureText: false,
                      textInputType: TextInputType.number,
                      labelText: '',
                      placeholder: '',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  '00:30',
                  textAlign: TextAlign.center,
                  style: CustomText.headlineBookDark500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  width: double.infinity,
                  voidCallback: () {},
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  colorButton: CustomColor.information900,
                  textButton: Text(
                    InformativeTexts.checkEmailScreenContinueBtn,
                    textAlign: TextAlign.center,
                    style:
                        CustomText.headlineMedium(CustomColor.primary000, 20),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    InformativeTexts.checkEmailScreenQuestion,
                    textAlign: TextAlign.start,
                    style: CustomText.headlineBookDark500,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    InformativeTexts.checkEmailScreenResend,
                    textAlign: TextAlign.start,
                    style: CustomText.headlineDark500,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
