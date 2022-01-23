import 'dart:io';
import 'package:flutter/material.dart';
import 'package:website_to_apk/helpers/appConfig.dart';
import 'package:website_to_apk/helpers/appHttpOverrides.dart';
import 'package:website_to_apk/helpers/config.dart';
import 'package:website_to_apk/screens/home_screen.dart';

void mainCommon({required String apiUrl}) async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = new AppHttpOverrides();
  Config.baseUrl =  apiUrl;
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return _buildApp(config!.appDisplayName);
  }

  Widget _buildApp(String appName) {
    return MaterialApp(
        title: appName,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomeScreen()
    );
  }
}
