// ignore_for_file: use_super_parameters, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/commons/Helper.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_eschool/data/sidebar_menu_items.dart';
import 'package:flutter_eschool/views/layouts/partials/list_menu.dart';
import 'package:flutter_eschool/views/layouts/sidebar/header_sidebar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MainSidebar extends StatelessWidget {
  const MainSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helper = Helper.instance;
    return Container(
      color: primary,
      width: 350,
      child: Column(
        children: [
          HeaderSidebar(),
          Expanded(
            child: Container(
              color: white,
              child: ListView(
                children: sidebarMenuItems.map((menu) {
                  return ListMenu(
                    title: menu['title'],
                    items: (menu['items'] as List<dynamic>).map((item) {
                      return Column(
                        children: [
                          InkWell(
                            child: Obx(() => Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: lightGrey),
                                      borderRadius: BorderRadius.circular(30),
                                      color: helper.defaultRoute.value ==
                                              item['page']
                                          ? primary
                                          : Colors.transparent),
                                  width: 50,
                                  height: 50,
                                  padding: EdgeInsets.all(12),
                                  child: Obx(() => SvgPicture.asset(
                                        item['icon'],
                                        width: 30,
                                        height: 30,
                                        color: helper.defaultRoute.value ==
                                                item['page']
                                            ? white
                                            : softBlack,
                                      )),
                                )),
                            onTap: () {
                              helper.setRoute(item['page']);
                            },
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            child: Text(
                              item['title'],
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      );
                    }).toList(),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
