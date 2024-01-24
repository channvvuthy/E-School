// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/commons/Sidebar.dart';
import 'package:flutter_eschool/views/auth/login/login_view.dart';
import 'package:flutter_eschool/views/home_view.dart';
import 'package:flutter_eschool/views/layouts/navbar/main_navbar.dart';
import 'package:flutter_eschool/views/layouts/partials/nav_action.dart';
import 'package:get/get.dart';
import 'package:flutter_eschool/views/layouts/sidebar/main_sidebar.dart';


void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sidebar = Sidebar.instance;
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/home', page: () => HomeView()),
        GetPage(name: '/login', page: () => LoginView()),

      ],
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Obx(
              () => Visibility(
                  visible: sidebar.isSidebarOpen.isTrue,
                  child: MainSidebar()),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.deepOrangeAccent,
                    child: Column(
                      children: [
                        MainNavbar(),
                        Expanded(
                          child: Container(
                              color: Colors.deepOrangeAccent,
                              child: InkWell(
                                onTap: () {
                                  sidebar.setSidebarOpen();
                                },
                                child: Text('Toggle Content'),
                              )),
                        ),
                      ],
                    ),
                  ),
                  NavAction()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
