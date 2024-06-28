import 'package:animate_do/animate_do.dart';
import 'package:app_pikbil_mobil/config/router/path_router.dart';
import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:app_pikbil_mobil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountScreen extends StatelessWidget {
  static const String name = 'account-screen';

  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
        voidCallback: () => context.push(PathRouter.profile),
      ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: FadeInRight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  InformativeTexts.accountScreenProfile,
                  textAlign: TextAlign.start,
                  style: CustomText.headlineDark700,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Image.network(
                          'https://media.istockphoto.com/id/1472836935/photo/overjoyed-happy-woman-pointing-finger-up-and-looking-at-camera-with-toothy-smile-having-idea.webp?b=1&s=170667a&w=0&k=20&c=EzWoGVvrU9d0DVztfWYfkDi1sufVtesTjC9zCkf6Tzg=',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        InformativeTexts.accountScreenChangePicture,
                        style: CustomText.headlineDark500,
                      )
                    ],
                  ),
                ),
                const CustomTextField(
                  textInputType: TextInputType.text,
                  labelText: InformativeTexts.accountScreenFullName,
                  placeholder:
                      InformativeTexts.accountScreenFullNamePlaceholder,
                ),
                const CustomTextField(
                  textInputType: TextInputType.emailAddress,
                  labelText: InformativeTexts.accountScreenEmail,
                  placeholder: InformativeTexts.accountScreenEmailPlaceholder,
                ),
                const CustomTextField(
                  textInputType: TextInputType.datetime,
                  labelText: InformativeTexts.accountScreenDate,
                  placeholder: InformativeTexts.accountScreenDatePlaceholder,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: CustomFloatingButton(
          alignment: Alignment.bottomCenter,
          voidCallback: () {},
          margin: const EdgeInsetsDirectional.only(bottom: 20),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          colorButton: CustomColor.primary900,
          textButton: const Text(InformativeTexts.accountScreenUpdateProfile,
              textAlign: TextAlign.center, style: CustomText.headlineWhite500)),
    );
  }
}
