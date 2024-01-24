import 'package:get/get.dart';

class Sidebar {
  RxBool isSidebarOpen = true.obs;

  // Create a private constructor for the singleton
  Sidebar._privateConstructor();

  // Create a static instance of the class
  static final Sidebar _instance = Sidebar._privateConstructor();

  // Create a getter to access the instance
  static Sidebar get instance => _instance;

  void setSidebarOpen() {
    isSidebarOpen.value = !isSidebarOpen.value;
  }
}
