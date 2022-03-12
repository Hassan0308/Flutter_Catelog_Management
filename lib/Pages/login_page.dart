import 'package:flutter/material.dart';
import 'package:catelog_management/main.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    
    // SingleChildScrollView(
      // physics: BouncingScrollPhysics(),
      


   
   Material(
     

      
child:SafeArea(child: 
Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  
  children: [
    Image.asset("asset/images/login_image.png",
    
    fit: BoxFit.cover,),

    SizedBox(
      height: 20,
   
    ),

Text("WELCOME",
style: TextStyle(

  fontSize: 24,
  fontWeight: FontWeight.bold,
),
),

Padding(
  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 32),
  child:   Column(
  
  
  
    children: [
  
  TextFormField(
  
    decoration: InputDecoration(
  
  hintText: "Enter Username",
  
  labelText: "Username",
  
  
  
    ),
  
  ),
  
  TextFormField(
  
    obscureText: true,
  
    decoration: InputDecoration(
  
  hintText: "Enter Password",
  
  labelText: "Password",
  
  
  
    ),
  
  ),
  const SizedBox(height: 20,),
      
  ElevatedButton(onPressed: (){}, child: Text("Login"),
  
  
  style: TextButton.styleFrom())
  
  
    ],
  
  ),
),


  ],
), 



) 




    );
  }
}