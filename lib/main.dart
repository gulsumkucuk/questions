import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'LoginScreen.dart';
import 'genel.dart';
import 'ing.dart';
import 'information.dart';
import 'package:get/get.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';
import 'homePage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main() => runApp(navigate());

class navigate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowMaterialGrid: false,
      localizationsDelegates: [

        GlobalMaterialLocalizations.delegate,
        SfGlobalLocalizations.delegate

      ],
      supportedLocales: const [
        Locale('en'),
        Locale('tr'),
      ],
      locale: const Locale('tr'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      getPages: [
        GetPage(name: "/", page: () => loginPage_Body()),

      ],

    );
  }
}
void ana() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter log iu',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),

    );

  }
}
void main1() {
  runApp(MyApp());
}
class MyApp1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,



      routes: {
        "/Ingilizce": (context)=> Ingilizce(),
        "/Genel": (context)=> Genel(),
        "/Information": (context)=> Information(),},
      home: HomePage(),
    );
  }
}