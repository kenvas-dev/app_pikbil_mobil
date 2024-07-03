import 'package:app_pikbil_mobil/config/helpers/helpers.dart';
import 'package:app_pikbil_mobil/config/router/path_router.dart';
import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:app_pikbil_mobil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class BillingScreen extends StatelessWidget {
  static const String name = 'billing-screen';

  const BillingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          ProfileAppBar(voidCallback: () => context.push(PathRouter.profile)),
      body: MediaQuery.removeViewPadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  InformativeTexts.profileMenuOptionBilling,
                  textAlign: TextAlign.start,
                  style: CustomText.headlineDark700,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  InformativeTexts.billingScreenPaymentMethod,
                  textAlign: TextAlign.start,
                  style: CustomText.headlineDark600,
                ),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: CustomGradientBox(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colorsGradient: const [
                        CustomColor.information500,
                        CustomColor.information700
                      ],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            obfuscateMask(
                                InformativeTexts.billingScreenTargetNumber),
                            textAlign: TextAlign.start,
                            style: CustomText.headlineWhite700,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    InformativeTexts.billingScreenTargetClient,
                                    textAlign: TextAlign.start,
                                    style: CustomText.headlineWhite400,
                                  ),
                                  Text(
                                    InformativeTexts.billingScreenTargetExpire,
                                    textAlign: TextAlign.start,
                                    style: CustomText.headlineWhite400,
                                  )
                                ],
                              ),
                              Image.asset(PathImage.visa)
                            ],
                          )
                        ],
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: CustomColor.primary300),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: CustomColor.primary500,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          InformativeTexts.billingScreenAddMorePaymentMethod,
                          textAlign: TextAlign.start,
                          style: TextStyle(color: CustomColor.primary500),
                        )
                      ],
                    ),
                  ),
                )
                /*  IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.add),) */
              ],
            ),
          )),
    );
  }
}
