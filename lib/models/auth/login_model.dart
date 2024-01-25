import 'package:get/get.dart';

class Login {
  RxString phoneNumber = ''.obs;
  RxString password = ''.obs;

  Login._privateConstructor();

  static final Login _instance = Login._privateConstructor();

  static Login get instance => _instance;

  void setPhone(String phone) {
    phoneNumber.value = phone;
  }

  void setPassword(String pass) {
    password.value = pass;
  }
}
