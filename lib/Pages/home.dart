// ignore_for_file: unnecessary_string_escapes


import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    
     Scaffold(
      
      appBar: AppBar(
        title: Text("Cetalog"),
      ),
     
      
      body: Center(

        child: Image.asset("asset/images/login_image.png"),
      ),
  
      
      );
  }
}