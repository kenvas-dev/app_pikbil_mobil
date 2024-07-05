import 'package:animate_do/animate_do.dart';
import 'package:app_pikbil_mobil/config/static/custom_color.dart';
import 'package:app_pikbil_mobil/config/static/static.dart';
import 'package:app_pikbil_mobil/presentation/views/views.dart';
import 'package:app_pikbil_mobil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class WelcomeScreen extends StatefulWidget {
  static const String name = 'welcome-screen';

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool enabledNextButton = true;
  bool enabledSkipButton = false;

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    final List<Widget> pageCarousel = [
      const EndlessOptionView(),
      const DriveConfidentlyView(),
      const SupportView()
    ];
    int pagePosition = 0;

    return Scaffold(
      body: MediaQuery.removePadding(
          removeBottom: true,
          removeTop: true,
          context: context,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 600,
                    child: PageView(
                      controller: controller,
                      onPageChanged: (value) {
                        pagePosition = value;
                        print(pagePosition);
                        // if (pagePosition < pageCarousel.length - 1) {
                        //   pagePosition = pagePosition + 1;
                        //   controller.animateToPage(pagePosition,
                        //       duration: const Duration(milliseconds: 400),
                        //       curve: Curves.easeIn);
                        //   setState(() {
                        //     enabledSkipButton = true;
                        //   });
                        //   if (pagePosition == pageCarousel.length - 1) {
                        //     setState(() {
                        //       enabledNextButton = false;
                        //     });
                        //   }
                        // }

                        // if (pagePosition <= pageCarousel.length &&
                        //     pagePosition > 0) {
                        //   if (pagePosition == 1) {
                        //     setState(() {
                        //       enabledSkipButton = false;
                        //     });
                        //   }
                        //   pagePosition = pagePosition - 1;
                        //   controller.animateToPage(pagePosition,
                        //       duration: const Duration(milliseconds: 400),
                        //       curve: Curves.easeIn);

                        //   setState(() {
                        //     enabledNextButton = true;
                        //   });
                        // }
                      },
                      children: pageCarousel,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmoothPageIndicator(controller: controller, count: 3),
                      Row(
                        children: [
                          if (enabledSkipButton)
                            FadeIn(
                              child: CustomButton(
                                  voidCallback: () {
                                    if (pagePosition <= pageCarousel.length &&
                                        pagePosition > 0) {
                                      if (pagePosition == 1) {
                                        setState(() {
                                          enabledSkipButton = false;
                                        });
                                      }
                                      pagePosition = pagePosition - 1;
                                      controller.animateToPage(pagePosition,
                                          duration:
                                              const Duration(milliseconds: 400),
                                          curve: Curves.easeIn);

                                      setState(() {
                                        enabledNextButton = true;
                                      });
                                    }
                                  },
                                  margin:
                                      const EdgeInsetsDirectional.only(end: 10),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  colorButton: CustomColor.primary000,
                                  textButton: const Text('Skip',
                                      textAlign: TextAlign.center,
                                      style: CustomText.headlineBookDark400)),
                            ),
                          if (enabledNextButton)
                            FadeIn(
                              child: CustomButton(
                                  voidCallback: () {
                                    if (pagePosition <
                                        pageCarousel.length - 1) {
                                      pagePosition = pagePosition + 1;
                                      controller.animateToPage(pagePosition,
                                          duration:
                                              const Duration(milliseconds: 400),
                                          curve: Curves.easeIn);
                                      setState(() {
                                        enabledSkipButton = true;
                                      });
                                      if (pagePosition ==
                                          pageCarousel.length - 1) {
                                        setState(() {
                                          enabledNextButton = false;
                                        });
                                      }
                                    }
                                  },
                                  margin:
                                      const EdgeInsetsDirectional.only(end: 10),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  colorButton: CustomColor.information900,
                                  textButton: const Text('Next',
                                      textAlign: TextAlign.center,
                                      style: CustomText.headlineWhite500)),
                            ),
                          if (!enabledNextButton)
                            FadeIn(
                              child: CustomButton(
                                  voidCallback: () {},
                                  margin:
                                      const EdgeInsetsDirectional.only(end: 10),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  colorButton: CustomColor.information900,
                                  textButton: const Text('Login',
                                      textAlign: TextAlign.center,
                                      style: CustomText.headlineWhite500)),
                            )
                        ],
                      )
                    ],
                  )
                ]),
          )),
    );
  }
}
