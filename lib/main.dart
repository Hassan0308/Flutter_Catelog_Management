import 'package:catelog_management/Pages/cart_page.dart';
import 'package:catelog_management/Pages/home.dart';
import 'package:catelog_management/Pages/login_page.dart';
import 'package:catelog_management/utils/my_routes.dart';
import 'package:catelog_management/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Pages/detail_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      themeMode: ThemeMode.system,

      theme: Mytheme.LightThemedata(context),
      darkTheme: Mytheme.DarkTheme(context),
// home: LoginPage(),
     
     initialRoute: "/",
      routes: 
      {
        
       "/":(context) => HomePage(),
       MyRoutes.login_route:(context) => const LoginPage(),
        MyRoutes.home_route:(context) => const HomePage(),
          MyRoutes.cart_route:(context) => const Cart_Page(),
     
      }
      ,

    );
    
  }
}
