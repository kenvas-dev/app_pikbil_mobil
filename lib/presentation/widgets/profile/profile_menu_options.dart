import 'package:animate_do/animate_do.dart';
import 'package:app_pikbil_mobil/config/router/router.dart';
import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuList {
  final String iconPath;
  final String menuLabel;
  final String route;

  MenuList({
    required this.iconPath,
    required this.menuLabel,
    required this.route,
  });
}

class ProfileMenuOptions extends StatelessWidget {
  const ProfileMenuOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<MenuList> menuList = [
      MenuList(
          iconPath: PathImage.account,
          menuLabel: InformativeTexts.profileMenuOptionAccount,
          route: PathRouter.account),
      MenuList(
          iconPath: PathImage.billing,
          menuLabel: InformativeTexts.profileMenuOptionBilling,
          route: PathRouter.billing),
      MenuList(
          iconPath: PathImage.changePassword,
          menuLabel: InformativeTexts.profileMenuOptionChangePassword,
          route: PathRouter.changePassword),
      MenuList(
          iconPath: PathImage.notification,
          menuLabel: InformativeTexts.profileMenuOptionNotification,
          route: PathRouter.notification),
    ];
    return Expanded(
      child: ListView.builder(
        itemCount: menuList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final menuListItem = menuList[index];
          return FadeInRight(
            child: GestureDetector(
              onTap: () {
                context.push(menuListItem.route);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              menuListItem.iconPath,
                              width: 22,
                              height: 22,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        menuListItem.menuLabel,
                        style: CustomText.headlineBookDark500,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        // color: Colors.white,
                        border: Border.all(
                            width: 0.2, color: CustomColor.primary200)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
