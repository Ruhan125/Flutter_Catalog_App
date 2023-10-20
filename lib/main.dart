import 'package:calatogapp/pages/cart_page.dart';
import 'package:calatogapp/pages/splashscreen.dart';
import 'package:calatogapp/widgets/themes.dart';
import 'package:flutter/material.dart';


import 'package:calatogapp/pages/home.dart';
import 'package:calatogapp/pages/loginPage.dart';
import 'package:calatogapp/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double days = 30;
    String name = "Ruhan";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme,

      darkTheme: MyTheme.darkTheme,
      initialRoute: MyRoutes.splashroute,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) =>HomePage (),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
        MyRoutes.splashroute:(context) => SplashScreen(),
      },
    );
  }
}
