import 'package:catelog_management/Pages/login_page.dart';
import 'package:catelog_management/utils/my_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

     child: Container(
       color: Colors.green,
       child: ListView(
         
     children: [
      
     
     DrawerHeader(
       
       padding: EdgeInsets.zero,
       child: UserAccountsDrawerHeader(accountName: Text("Hassan",style: TextStyle(fontSize: 18),), accountEmail: Text("ProgrammingWithHassan@gmail.com"),
       
       currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://workchest.com/users/profile_pics/main_20201226053203IMG_20201220_201352_467.jpg"),
       
       ))),
      

       ListTile(
        //  onTap: (() {
        //    Navigator.pushNamed(context, MyRoutes.login_route);
        //  }),

         
leading: Icon(CupertinoIcons.home,color: Colors.white,),
title: Text("Home",style: TextStyle(color: Colors.white ), textScaleFactor: 1.2,),

       ),
           ListTile(
         
leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
title: Text("Profile",style: TextStyle(color: Colors.white ), textScaleFactor: 1.2,),

       ),
      
           ListTile(
         
leading: Icon(CupertinoIcons.mail,color: Colors.white,),
title: Text("Mail",style: TextStyle(color: Colors.white ), textScaleFactor: 1.2,),

       ),
       
     
     ],
     
       ),
     ),
    );
  }
}