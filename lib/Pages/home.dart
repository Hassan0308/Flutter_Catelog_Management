// ignore_for_file: unnecessary_string_escapes


import 'dart:convert';

import 'package:catelog_management/models/catalog_items.dart';
import 'package:catelog_management/utils/my_routes.dart';


import 'package:catelog_management/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'home_widgets/Header.dart';
import 'home_widgets/list_of_catalog.dart';
class HomePage extends StatefulWidget {
  
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

  loadData()async{
    await Future.delayed((Duration(seconds: 2)));

final catalog_json=await rootBundle.loadString("asset/files/catalog_data.json");
final decoded_data=jsonDecode(catalog_json);
var products_data=decoded_data['products'];
Catalog_Data.product=List.from(products_data).map<Item>((item) => Item.fromMap(item)).toList();


setState(() {
  
});


  }
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {

Navigator.pushNamed(context, MyRoutes.cart_route);

      },
      backgroundColor: context.theme.buttonColor,
      
      child: Icon(CupertinoIcons.cart ,color: Colors.white,),),
      
   
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Catalog_Header(),
      if(Catalog_Data.product!=null && Catalog_Data.product.isNotEmpty)
List_Of_Catalog().expand()
else
Center(child: CircularProgressIndicator())

          
        ],
        
          ),
        ),
      )
  
      
      );
  }
}






