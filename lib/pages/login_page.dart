import 'package:flutter/material.dart';
import 'package:flutter_new/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {



  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name ="";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.cardColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/fly_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Welcome $name",
              style: TextStyle(fontSize: 28,
                  fontWeight: FontWeight.bold
              ) ,
            ),
            SizedBox(
              height: 20,
            ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
             child: Form(
               key: _formKey,
               child: Column(
                 children: [
                   TextFormField(
                     decoration: InputDecoration(
                         hintText: "Enter username",
                         labelText: "username",

                     ),
                     validator: (value){
                       if(value!.isEmpty){
                         return "username can not empty";
                       }

                       return null;
                     },
                     onChanged:(value){
                       name=value;
                       setState(() {

                       });
                     } ,
                   ),
                   TextFormField(
                     obscureText: true,
                     decoration: InputDecoration(
                       hintText: "Enter password",
                       labelText: "password",
                     ),
                     validator: (value){
                       if(value!.isEmpty){
                         return "password can not empty";
                       } else if(value.length<6){
                         return "password length should be atleast 6";
                       }

                       return null;
                     },
                   ),
                   SizedBox(
                     height: 40,
                   ),
                   Material(
                     color: context.theme.focusColor,
                       borderRadius:
                       BorderRadius.circular(changeButton? 50:5),
                     child: InkWell(
                       onTap:() => moveToHome(context),


                       child: AnimatedContainer(
                         duration: Duration(seconds: 1),
                         height: 50,
                         alignment: Alignment.center,
                         width:  changeButton? 50 : 150,

                         child: changeButton? Icon(Icons.done,
                           color: Colors.white,): Text("Login",
                           style:TextStyle(
                             color: Colors.white,
                             fontSize: 18,
                             fontWeight: FontWeight.bold
                           ) ,
                         ),
                       ),
                     ),
                   ),

                 ],
               ),
             ),
           )
          ],
        ),
      ),

    );
  }
}
