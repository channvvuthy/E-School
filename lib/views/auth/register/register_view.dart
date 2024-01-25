// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eschool/components/button_with_fill.dart';
import 'package:flutter_eschool/components/outline_input.dart';
import 'package:flutter_eschool/configs/icon.dart';
import 'package:flutter_eschool/configs/theme_color.dart';
import 'package:flutter_eschool/views/auth/login/partials/footer_view.dart';
import 'package:flutter_eschool/views/auth/register/partials/back_to_login_view.dart';
import 'package:flutter_eschool/views/auth/register/partials/box_shadow_view.dart';
import 'package:flutter_eschool/views/auth/register/partials/gender_view.dart';
import 'package:flutter_eschool/views/auth/register/partials/sign_up_title_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(flex: 1, child: SizedBox()),
            BoxShadowView(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SignUpTitle(),
                        _buildSpace(height: 40),
                        OutlineInput(
                          onChanged: (value) {},
                          iconUrl: userIcon,
                          placeholder: 'First Name*',
                        ),
                        _buildSpace(),
                        OutlineInput(
                          onChanged: (value) {},
                          iconUrl: userIcon,
                          placeholder: 'Last Name*',
                        ),
                        _buildSpace(),
                        GenderView(onGenderChanged: (value) {}),
                        _buildSpace(),
                        OutlineInput(
                          onChanged: (value) {},
                          iconUrl: phoneIcon,
                          placeholder: 'Phone Number*',
                        ),
                        _buildSpace(),
                        OutlineInput(
                          onChanged: (value) {},
                          iconUrl: lockIcon,
                          placeholder: 'Password*',
                        ),
                        _buildSpace(),
                        OutlineInput(
                          onChanged: (value) {},
                          iconUrl: lockIcon,
                          placeholder: 'Confirm Password*',
                        ),
                        _buildSpace(),
                        Row(
                          children: [
                            Radio(
                                value: "",
                                groupValue: 1,
                                onChanged: (value) {}),
                            Text("Please accept with "),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "term & condition",
                                  style: TextStyle(color: primary),
                                ),
                              ),
                            )
                          ],
                        ),
                        _buildSpace(),
                        ButtonWithFill(
                          title: "Sign Up",
                          onPressed: () {},
                          borderRadius: 10,
                        ),
                      ],
                    ),
                    BackToLoginView(),
                  ],
                ),
              ),
            ),
            FooterView()
          ],
        ),
      ),
    );
  }
}

Widget _buildSpace({double height = 20}) {
  return SizedBox(
    height: height,
  );
}
