import 'package:catelog_management/utils/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:catelog_management/main.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name="";
  bool OnPress=false;
  @override
  Widget build(BuildContext context) {
    return Material(
     

      
child:SafeArea(child: 


SingleChildScrollView(
  child:   Column(
  
    crossAxisAlignment: CrossAxisAlignment.center,
  
    
  
    children: [
  
      Image.asset("asset/images/login_image.png",
     
  
      
  
      fit: BoxFit.cover,),
  
  
  
      SizedBox(
  
        height: 20,
  
     
  
      ),
  
  
  
  Text("WELCOME $name",
  
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
  
    onChanged: (value) {
      name=value;
      setState(() {
        
      });
    },
  
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
  InkWell(

    onTap: (() async{
      
      setState(() {
        OnPress=true;
      });
      await Future.delayed(Duration(seconds: 1));
      
      Navigator.pushNamed(context, MyRoutes.home_route);
      
    }),
  
  child:AnimatedContainer(
    duration: Duration(seconds: 1),
    width:OnPress?50: 120,
    height: 50,
   
    alignment: Alignment.center,
    child:
    
    OnPress?Icon(Icons.done,color: Colors.white,):
     Text("Login" , style: TextStyle(fontSize: 18,color: Colors.white),),
    decoration: BoxDecoration(
       color: Colors.green,
     borderRadius: BorderRadius.circular(OnPress?20:10)
       
    ),
  )
        
  )
//     ElevatedButton(onPressed: (){

// Navigator.pushNamed(context, MyRoutes.home_route);

//     }, child: const Text("Login"),
  
    
  
    
  
//     style: TextButton.styleFrom(minimumSize: Size(120, 50)))
  
    
  
    
  
      ],
  
    
  
    ),
  
  ),
  
  
  
  
  
    ],
  
  ),
), 



) 




    );
  }
}