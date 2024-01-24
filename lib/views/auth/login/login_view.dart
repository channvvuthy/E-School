// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/components/button_with_fill.dart';
import 'package:flutter_eschool/configs/config.dart';
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
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: BackToHome(),
          ),
          Center(
            child: Container(
              width: 450,
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // Set border radius as needed
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
                    onChanged: (value) {},
                    iconUrl: phoneIcon,
                    placeholder: 'Phone Number',
                  ),
                  _buildSpace(),
                  OutlineInput(
                    onChanged: (value) {},
                    iconUrl: lockIcon,
                    placeholder: 'Password',
                  ),
                  _buildSpace(),
                  Container(
                      width: double.infinity,
                      alignment: Alignment.topRight,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                            onTap: () {},
                            child: _buildBox("Forgot Password?",
                                textColor: primary)),
                      )),
                  _buildSpace(),
                  ButtonWithFill(title: "Login", onPressed: () {}),
                  _buildSpace(),
                  HasAccountView(onTap: () {}),
                ],
              ),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(
                image: AssetImage(AppConfig.footerUrl),
              ),
            ],
          ))
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
