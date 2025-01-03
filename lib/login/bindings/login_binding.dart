import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: PageView(
        onPageChanged: controller.updateIndex,
        children: const [
          Center(child: Text('Welcome to the App')),
          Center(child: Text('Discover Features')),
          Center(child: Text('Let\'s Get Started!')),
        ],
      ),
      bottomNavigationBar: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () => Get.offNamed('/login'),
                child: const Text('Skip'),
              ),
              Text('Page: ${controller.currentIndex + 1}'),
            ],
          )),
    );
  }
}
