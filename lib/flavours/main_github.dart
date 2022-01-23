import 'package:flutter/material.dart';
import 'package:website_to_apk/helpers/appConfig.dart';
import 'main.dart';

void main() {
  Widget configuredApp = AppConfig(
    appDisplayName: "Github",
    child: MyApp(),
  );

  mainCommon(apiUrl: 'https://github.com');
  runApp(configuredApp);
}
