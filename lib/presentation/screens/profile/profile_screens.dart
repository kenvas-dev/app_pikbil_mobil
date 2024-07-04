import 'package:animate_do/animate_do.dart';
import 'package:app_pikbil_mobil/config/router/router.dart';
import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:app_pikbil_mobil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  static const String name = 'profile-screen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
        voidCallback: () => context.push(PathRouter.home),
      ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: const Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                InformativeTexts.profileScreenProfile,
                textAlign: TextAlign.start,
                style: CustomText.headlineDark700,
              ),
              SizedBox(
                height: 20,
              ),
              _Info_profile(),
              SizedBox(
                height: 20,
              ),
              ProfileMenuOptions(),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingButton(
          alignment: Alignment.bottomCenter,
          voidCallback: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return CustomDialog(
                  hasEnabledButtonClose: true,
                  title: InformativeTexts.profileScreenLogoutAccount,
                  content: InformativeTexts.profileScreenLogoutAccountDetails,
                  actions: [
                    CustomButton(
                        voidCallback: () {
                          context.pushReplacement(PathRouter.welcome);
                        },
                        margin: const EdgeInsetsDirectional.all(0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        colorButton: CustomColor.primary900,
                        textButton: const Text(
                            InformativeTexts.profileScreenLogout,
                            textAlign: TextAlign.center,
                            style: CustomText.headlineWhite500))
                  ],
                );
              },
            );
          },
          margin: const EdgeInsetsDirectional.only(bottom: 20),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          colorButton: CustomColor.primary900,
          textButton: const Text(InformativeTexts.profileScreenLogout,
              textAlign: TextAlign.center, style: CustomText.headlineWhite500)),
    );
  }
}

class _Info_profile extends StatelessWidget {
  const _Info_profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(PathRouter.account);
      },
      child: FadeInRight(
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: CustomGradientBox(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colorsGradient: [
              CustomColor.information600,
              CustomColor.information500
            ],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    'https://media.istockphoto.com/id/1472836935/photo/overjoyed-happy-woman-pointing-finger-up-and-looking-at-camera-with-toothy-smile-having-idea.webp?b=1&s=170667a&w=0&k=20&c=EzWoGVvrU9d0DVztfWYfkDi1sufVtesTjC9zCkf6Tzg=',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      InformativeTexts.profileScreenNameUser,
                      style: CustomText.headlineWhite700,
                    ),
                    Text(
                      InformativeTexts.profileScreenCodeUser,
                      style: CustomText.headlineWhite600,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
