// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/configs/string.dart';
import 'package:flutter_eschool/models/auth/login_model.dart';
import 'package:flutter_eschool/utils/helper/validation.dart';
import 'package:flutter_eschool/views/auth/login/partials/footer_view.dart';
import 'package:flutter_eschool/views/auth/register/partials/box_shadow_view.dart';
import 'package:get/get.dart';
import 'package:flutter_eschool/components/button_with_fill.dart';
import 'package:flutter_eschool/configs/icon.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_eschool/views/auth/login/partials/back_to_home.dart';
import 'package:flutter_eschool/views/auth/login/partials/has_account_view.dart';
import 'package:flutter_eschool/views/auth/login/partials/logo_view.dart';
import '../../../components/outline_input.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final login = Login.instance;

    onLogin() {
      var fields = [
        {
          "field": {
            "name": "phone",
            "value": login.phoneNumber.value,
            "validation": "required:true"
          }
        },
        {
          "field": {
            "name": "password",
            "value": login.password.value,
            "validation": "required:true"
          }
        }
      ];
      Validation.validateFields(fields);
    }

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: BackToHome(),
          ),
          Center(
            child: BoxShadowView(
              child: Container(
                width: 450,
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: lightGrey.withOpacity(0.3), // Border color
                      width: 1.0, // Border width
                    )),
                child: Column(
                  children: [
                    LogoView(),
                    _buildSpace(),
                    _buildSpace(),
                    OutlineInput(
                      onChanged: (value) {
                        login.setPhone(value);
                      },
                      iconUrl: phoneIcon,
                      placeholder: Strings.phoneNumber,
                    ),
                    _buildSpace(),
                    OutlineInput(
                      isSecure: true,
                      onChanged: (value) {
                        login.setPassword(value);
                      },
                      iconUrl: lockIcon,
                      placeholder: Strings.password,
                    ),
                    _buildSpace(),
                    Container(
                        width: double.infinity,
                        alignment: Alignment.topRight,
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                              onTap: () {},
                              child: _buildBox("${Strings.forgotPassword}?",
                                  textColor: primary)),
                        )),
                    _buildSpace(),
                    ButtonWithFill(
                      title: Strings.login,
                      onPressed: onLogin,
                      borderRadius: 8,
                    ),
                    _buildSpace(),
                    HasAccountView(onTap: () {
                      Get.toNamed('/register');
                    }),
                  ],
                ),
              ),
            ),
          ),
          FooterView()
        ],
      ),
    );
  }
}

Widget _buildSpace() {
  return SizedBox(
    height: 25,
  );
}

Widget _buildBox(String title, {Color textColor = softBlack}) {
  return Container(
    width: double.infinity,
    alignment: Alignment.topRight,
    child: Text(
      title,
      style: TextStyle(color: textColor),
    ),
  );
}
