import 'package:flutter/material.dart';
import 'package:iti_project/constraints/constraints.dart';
import 'package:iti_project/models/onboarding_model.dart';
import 'package:iti_project/views/login_view.dart';
import 'package:iti_project/widgets/custom_onboarding_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final controller = PageController();
  bool islastpage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          onPageChanged: (value) {
            setState(() {
              islastpage = value == 2;
            });
          },
          controller: controller,
          children: [
            Customonboardingwidget(
              pageitem: Onboardingmodel(
                  backgroundColor: Colors.green,
                  urlimage:
                      'assets/images/istockphoto-1152401160-1024x1024-removebg-preview.png',
                  title: 'Discover Trendy Collections',
                  subtitle:
                      'Explore the latest styles and must-have items curated just for you.'),
            ),
            Customonboardingwidget(
              pageitem: Onboardingmodel(
                  backgroundColor: Colors.green,
                  urlimage:
                      'assets/images/istockphoto-1152401093-1024x1024-removebg-preview.png',
                  title: 'Exclusive Deals and Offers',
                  subtitle:
                      'Unlock special discounts and limited-time offers only for our app users.'),
            ),
            Customonboardingwidget(
              pageitem: Onboardingmodel(
                  backgroundColor: Colors.green,
                  urlimage:
                      'assets/images/istockphoto-1388108025-1024x1024-removebg-preview.png',
                  title: 'Seamless Shopping Experience',
                  subtitle:
                      'Shop with ease, from browsing to checkout, all in one place.'),
            ),
          ],
        ),
      ),
      bottomSheet: islastpage == true
          ? TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: kprimarycolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size.fromHeight(80)),
              onPressed: () async {
                // ignore: use_build_context_synchronously
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const Loginscreen();
                }));
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ))
          : Container(
              color: kprimarycolor,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                      child: const Text(
                        'SKIP',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      )),
                  Center(
                    child: SmoothPageIndicator(
                      onDotClicked: (index) {
                        controller.animateToPage(index,
                            duration: const Duration(microseconds: 500),
                            curve: Curves.easeIn);
                      },
                      controller: controller,
                      count: 3,
                      effect: const WormEffect(
                        spacing: 16,
                        dotWidth: 12,
                        dotHeight: 14,
                        dotColor: Colors.white,
                        activeDotColor: Colors.blue,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        controller.nextPage(
                            duration: const Duration(microseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: const Text('NEXT',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700))),
                ],
              ),
            ),
    );
  }
}
