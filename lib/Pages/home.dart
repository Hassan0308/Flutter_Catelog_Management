// ignore_for_file: unnecessary_string_escapes


import 'package:catelog_management/models/catalog_items.dart';
import 'package:catelog_management/widgets/catalog_list.dart';
import 'package:catelog_management/widgets/drawer.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyData=List.generate(50,(index)=>Catalog_Data.product[0]);
    return 
    
     Scaffold(
      
      appBar: AppBar(
        title: Text("Cetalog"),
      ),
     drawer: MyDrawer(),
      
      body: ListView.builder(
        
        physics: BouncingScrollPhysics(),
        itemCount: dummyData.length,
      
      itemBuilder:(context,index){

        return Catalog_List(
          item: dummyData[index],
        );
      } ,
      ),
  
      
      );
  }
}