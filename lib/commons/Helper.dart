import 'package:get/get.dart';

class Helper {
  RxString defaultRoute = 'Home'.obs;

  // Create a private constructor for the singleton
  Helper._privateConstructor();

  // Create a static instance of the class
  static final Helper _instance = Helper._privateConstructor();

  // Create a getter to access the instance
  static Helper get instance => _instance;

  void setRoute(String routeName) {
    defaultRoute.value = routeName;
  }
}
