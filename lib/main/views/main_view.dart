import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());

    return Scaffold(
      body: Obx(() {
        switch (controller.currentIndex.value) {
          case 0:
            return const Center(child: Text('Home'));
          case 1:
            return const Center(child: Text('Promo'));
          case 2:
            return const Center(child: Text('Pesanan'));
          default:
            return const Center(child: Text('Unknown'));
        }
      }),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.switchTab,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: 'Promo'),
              BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Pesanan'),
            ],
          )),
    );
  }
}
