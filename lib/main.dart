import 'package:flutter/material.dart';
import 'package:flutter_new/core/store.dart';
import 'package:flutter_new/pages/cart_page.dart';
import 'package:flutter_new/pages/home_page.dart';
import 'package:flutter_new/pages/login_page.dart';
import 'package:flutter_new/utils/routes.dart';
import 'package:flutter_new/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart'; 


void main(){
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme:MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
        MyRoutes.cartRoute:(context) => CartPage(),
      },
    );
  }
}
