import 'package:flutter/material.dart';
import 'package:website_to_apk/helpers/appConfig.dart';
import 'main.dart';

void main() {
  Widget configuredApp = AppConfig(
    appDisplayName: "Goodgame Empire",
    child: MyApp(),
  );

  mainCommon(apiUrl: 'https://empire.goodgamestudios.com');
  runApp(configuredApp);
}
