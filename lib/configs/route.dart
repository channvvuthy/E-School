// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import '../views/auth/login/login_view.dart';
import '../views/auth/register/register_view.dart';
import '../views/home_view.dart';

class RoutesConfig {
  static final List<GetPage> pages = [
    GetPage(name: '/home', page: () => HomeView()),
    GetPage(name: '/login', page: () => LoginView()),
    GetPage(name: '/register', page: () => RegisterView()),
  ];
}
