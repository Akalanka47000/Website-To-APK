import 'package:flutter/material.dart';
import 'package:website_to_apk/helpers/appConfig.dart';
import 'main.dart';

void main() {
  Widget configuredApp = AppConfig(
    appDisplayName: "Firebase Console",
    child: MyApp(),
  );

  mainCommon(apiUrl: 'https://console.firebase.google.com');
  runApp(configuredApp);
}
