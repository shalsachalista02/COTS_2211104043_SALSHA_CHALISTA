import 'package:get/get.dart';

class LoginController extends GetxController {
  final phoneController = ''.obs;

  void validatePhone(String value) {
    phoneController.value = value;
  }
}
