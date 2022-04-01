import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme{
 


  static ThemeData LightThemedata(BuildContext context)=>ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // brightness: Brightness.light,
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
          canvasColor: CreamColor,
          
        
        cardColor: Colors.white,
        buttonColor: DarkBlue,
        accentColor: Colors.black,
        appBarTheme: AppBarTheme(
          

          backgroundColor: Colors.white,
          elevation: 0.0,
        
          iconTheme: IconThemeData(color: Colors.black),
           toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
           titleTextStyle: Theme.of(context).textTheme.headline6,
       
        
        ),

  

      );

      static ThemeData DarkTheme(BuildContext context)=>ThemeData(

        
        primarySwatch: Colors.blue,
     
        fontFamily: GoogleFonts.poppins().fontFamily,
        canvasColor: Mytheme.bluish,
        accentColor: Colors.white,
        cardColor: Colors.black,
        
            buttonColor: DarkBlue,
        appBarTheme: AppBarTheme(

          backgroundColor: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
           toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
           titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

      //color
    static Color CreamColor=Color(0xfff5f5f5);
        static Color DarkBlue=Color.fromARGB(255, 43, 1, 255);
        static Color bluish=Color.fromARGB(255, 13, 6, 44);
              static Color black=Color(00000000);
               static Color DarkCreamColor=Color.fromARGB(255, 20, 20, 48);

}