import 'package:app_pikbil_mobil/config/router/router.dart';
import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:app_pikbil_mobil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationScreen extends StatefulWidget {
  static const String name = 'notification-screen';

  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool optionA = false;
  bool optionB = false;
  bool optionC = true;
  bool optionD = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          ProfileAppBar(voidCallback: () => context.push(PathRouter.profile)),
      body: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        removeTop: true,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                InformativeTexts.notificationScreenNotification,
                textAlign: TextAlign.start,
                style: CustomText.headlineDark700,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomSwitch(
                value: optionA,
                label: InformativeTexts.notificationScreenReceiveMessage,
                onChanged: (bool value) {
                  setState(() {
                    optionA = value;
                  });
                },
              ),
              CustomSwitch(
                value: optionB,
                label: InformativeTexts.notificationScreenReceiveCoupons,
                onChanged: (bool value) {
                  setState(() {
                    optionB = value;
                  });
                },
              ),
              CustomSwitch(
                value: optionC,
                label: InformativeTexts.notificationScreenReceiveNewsletter,
                onChanged: (bool value) {
                  setState(() {
                    optionC = value;
                  });
                },
              ),
              CustomSwitch(
                value: optionD,
                label: InformativeTexts.notificationScreenUpdate,
                onChanged: (bool value) {
                  setState(() {
                    optionD = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
