import 'package:flutter/material.dart';
import 'package:login/views/login_screen.dart';
import 'package:login/views/register_screen.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

         body: Column(
          children: [
              Image.asset("assets/images/freepik-export-20240903131247rye0.png",
              height: 400,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/images/photo_2024-09-03_19-10-16.jpg"),
                        ),
                        SizedBox(width: 10,),
                        Text("Localashop",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                        ),

                      ],
                    ),
                    Text("Everything you need is in one place ",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 20,),
                     Text("find your daily neccessilios of Brond The warlds largest fashion e_commerce has orrived in a mobile. shop now   ",
                    style: TextStyle(fontSize: 22, ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    ),
               SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder:
               (context)=> LoginScreen()));
                    },
                     child: Text(" Login",
                     style: TextStyle(color: Colors.white,
                     fontSize: 18
                     ),
                     ),
                     
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(400, 60)
                     ),
                     ),

                       SizedBox(height: 25,),
                    ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:
               (context)=> RegisterScreen()));
                    },
                     child: Text(" Register",
                     style: TextStyle(color: Colors.black,fontSize: 18),
                     ),
                     
                     style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 245, 237, 237),
                      minimumSize: Size(400, 60)
                     ),
                     ),
                  
                  ],
                ),
              )
          ],
         ),
    );
  }
}