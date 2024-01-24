// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eschool/commons/Helper.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ListNavbar extends StatelessWidget {
  final List<dynamic> items;

  const ListNavbar({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final helper = Helper.instance;
    return Row(
      children: List.generate(items.length, (index) {
        final item = items[index];
        final title = item['title'];
        final icon = item['icon'];
        final page = item['page'];

        return Expanded(
          child: InkWell(
            onTap: () {
              helper.setRoute(page);
            },
            child: Column(
              children: [
                Obx(
                  () => SvgPicture.asset(
                    icon,
                    width: 25,
                    height: 25,
                    color:
                        helper.defaultRoute.value == page ? primary : softBlack,
                  ),
                ),
                const SizedBox(height: 4),
                Visibility(
                    visible: title.toString().isNotEmpty, child: Text(title)),
                Obx(() => Visibility(
                    visible: helper.defaultRoute.value == page,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: primary, width: 4)),
                      ),
                    )))
              ],
            ),
          ),
        );
      }),
    );
  }
}
