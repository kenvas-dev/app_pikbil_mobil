import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:flutter/material.dart';

class DriveConfidentlyView extends StatelessWidget {
  const DriveConfidentlyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                  height: 400,
                  child: Image.asset(
                    PathImage.welcome2,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(InformativeTexts.welcomeScreenDriveConfidently,
              textAlign: TextAlign.center, style: CustomText.headlineDark700),
          const SizedBox(
            height: 20,
          ),
          const Text(InformativeTexts.welcomeScreenDriveConfidentlyDescriptions,
              textAlign: TextAlign.start,
              style: CustomText.headlineBookDark400),
        ]);
  }
}
