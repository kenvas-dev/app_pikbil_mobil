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
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          InformativeTexts.profileScreenProfile,
          style: TextStyle(
              fontFamily: 'Gotham-Medium',
              fontSize: 30,
              color: Color.fromRGBO(25, 34, 82, 1)),
        ),
      ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const _Info_profile(),
              const SizedBox(
                height: 20,
              ),
              const ProfileMenuOptions(),
              CustomFloatingButton(
                  alignment: Alignment.bottomCenter,
                  voidCallback: () => context.push(PathRouter.welcome),
                  margin: const EdgeInsetsDirectional.only(bottom: 20),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  colorButton: const Color.fromRGBO(25, 34, 82, 1),
                  textButton: const Text(InformativeTexts.profileScreenLogout,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Gotham-Medium',
                          fontSize: 20,
                          color: Colors.white)))
            ],
          ),
        ),
      ),
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
      child: FadeInLeft(
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Color.fromRGBO(76, 117, 234, 1),
                  Color.fromRGBO(119, 154, 242, 0.8)
                ])),
            child: Padding(
              padding: const EdgeInsets.all(30),
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
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Gotham-Regular',
                            fontSize: 18),
                      ),
                      Text(
                        InformativeTexts.profileScreenCodeUser,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Gotham-Regular',
                            fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
