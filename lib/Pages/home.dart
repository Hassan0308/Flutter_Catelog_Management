import 'package:catelog_management/main.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Cetalog"),
      ),
      drawer: Drawer(),
  
      
      );
  }
}