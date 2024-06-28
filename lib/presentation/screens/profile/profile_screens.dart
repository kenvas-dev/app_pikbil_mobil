import 'package:animate_do/animate_do.dart';
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
          'Profile',
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
              const _Options_Menu(),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    context.push('/welcome');
                  },
                  child: Container(
                    margin: EdgeInsetsDirectional.only(bottom: 20),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        width: double.infinity,
                        color: const Color.fromRGBO(25, 34, 82, 1),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Logout',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Gotham-Medium',
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      /* floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: Color.fromRGBO(25, 34, 82, 1),
          
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            child: Text('Logout',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Gotham-Medium',
                    fontSize: 30,
                    color: Colors.white)),
          ),
        ),
      ), */
    );
  }
}

class _Options_Menu extends StatelessWidget {
  const _Options_Menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<MenuList> menuList = [
      MenuList(
          iconPath: 'assets/images/account.png',
          menuLabel: 'Account profile',
          route: '/account'),
      MenuList(
          iconPath: 'assets/images/billing.png',
          menuLabel: 'Billing',
          route: '/billing'),
      MenuList(
          iconPath: 'assets/images/password.png',
          menuLabel: 'Change Password',
          route: '/change-password'),
      MenuList(
          iconPath: 'assets/images/notification.png',
          menuLabel: 'Notification',
          route: '/notification'),
    ];
    return Expanded(
      child: ListView.builder(
        itemCount: menuList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final menuListItem = menuList[index];
          return FadeInLeft(
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
                        style: const TextStyle(
                            fontFamily: 'Gotham-Book',
                            fontSize: 14,
                            color: Color.fromRGBO(25, 34, 82, 1)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        // color: Colors.white,
                        border: Border.all(width: 0.2, color: Colors.black12)),
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

class _Info_profile extends StatelessWidget {
  const _Info_profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/account');
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
                        '#Name Client',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Gotham-Regular',
                            fontSize: 18),
                      ),
                      Text(
                        '#Code',
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
