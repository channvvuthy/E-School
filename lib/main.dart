// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eschool/app.dart';
import 'package:flutter_eschool/configs/config.dart';
import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  windowManager.waitUntilReadyToShow().then((_) async {
    await windowManager.maximize();
    await windowManager.setTitle(AppConfig.appName.tr);
  });

  runApp(App());
}
