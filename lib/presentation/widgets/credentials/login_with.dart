import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginWith extends StatelessWidget {
  final String question;
  final String redirectSection;
  final String redirectPath;
  const LoginWith(
      {super.key,
      required this.question,
      required this.redirectSection,
      required this.redirectPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            InformativeTexts.loginScreenLoginWith,
            style: CustomText.headlineBook(CustomColor.primary900, 16),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: CustomColor.gray200),
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    PathImage.gmail,
                    fit: BoxFit.cover,
                    width: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: CustomColor.gray200),
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    PathImage.facebook,
                    fit: BoxFit.cover,
                    width: 25,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () => context.push(redirectPath),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                question,
                textAlign: TextAlign.start,
                style: CustomText.headlineBookDark500,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                redirectSection,
                textAlign: TextAlign.start,
                style: CustomText.headlineDark500,
              ),
            ],
          ),
        )
      ],
    );
  }
}
