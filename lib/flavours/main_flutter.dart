import 'package:flutter/material.dart';
import 'package:website_to_apk/helpers/appConfig.dart';
import 'main.dart';

void main() {
  Widget configuredApp = AppConfig(
    appDisplayName: "Flutter",
    child: MyApp(),
  );

  mainCommon(apiUrl: 'https://flutter.dev');
  runApp(configuredApp);
}
