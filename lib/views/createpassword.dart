import 'package:flutter/material.dart';
import 'package:login/views/login_screen.dart';
import 'package:login/views/otp_screen.dart';

class Createpassword extends StatelessWidget {
  const Createpassword ({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
           appBar: AppBar(
            leading: IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
               (context)=> OtpScreen()));
            }, 
            
            icon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(97, 205, 201, 201)
              ), 
              child: Icon(Icons.arrow_back))),
           ),

           body: Expanded(
             child: SingleChildScrollView(
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
               
                   Padding(
                     padding: const EdgeInsets.only(left: 20,top: 45),

                     child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Create new password",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
                      ),
                      SizedBox(height: 12,),
                     
                      Text("Your new password must be unique from those previously used",
                      style: TextStyle(fontSize: 16),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      ),
                    
                     
                          SizedBox(height: 20,),
  
                        Text(" New Password",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                          SizedBox(height: 10,),
                     
                             Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 16),
                         child: TextFormField( 
                            obscureText: true,
                            //controller: emailController, // المتغيرات
                          keyboardType: TextInputType.emailAddress,// بتضيف لي في الكيبورد علامه الايميل بتسهل ع المسخدم 
                             decoration: InputDecoration(
                          labelText:
                           "Enter Password",
                           suffixIcon: Icon(Icons.remove_red_eye), // بتخلي الايكون في البدايه عادي 
                                           
                          border: OutlineInputBorder(// دي لوحدها بتعمل مربع لو من غيرها هيبقي في خط واحد فقط تحت 
                            borderRadius: BorderRadius.circular(25),// لو عايزه اتحكم في الزوايه بتاعت التيكت فورم فيلد 
                          ),
                           ),),
                       ),
                       

                         SizedBox(height: 10,),
                        Text("Confirm Password",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                          SizedBox(height: 10,),
                     
                             Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 16),
                         child: TextFormField( 
                            obscureText: true,
                            //controller: emailController, // المتغيرات
                          keyboardType: TextInputType.emailAddress,// بتضيف لي في الكيبورد علامه الايميل بتسهل ع المسخدم 
                             decoration: InputDecoration(
                          labelText:
                           "Enter confirm Password",
                           suffixIcon: Icon(Icons.remove_red_eye), // بتخلي الايكون في البدايه عادي 
                                           
                          border: OutlineInputBorder(// دي لوحدها بتعمل مربع لو من غيرها هيبقي في خط واحد فقط تحت 
                            borderRadius: BorderRadius.circular(25),// لو عايزه اتحكم في الزوايه بتاعت التيكت فورم فيلد 
                          ),
                           ),),
                       ),
                   SizedBox(height: 20,),


                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: ElevatedButton(onPressed: (){
                                                 Navigator.push(context, MaterialPageRoute(builder:
                                         (context)=> LoginScreen()));
                                              },
                                               child: Text(" Resot Password",
                                               style: TextStyle(color: Colors.white,
                                               fontSize: 18
                                               ),
                                               ),
                                               
                                               style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.blue,
                                                minimumSize: Size(400, 50)
                                               ),
                                               ),
                        ),
                         //////////////////
                     ],),
                   )
               
               ],),
             ),
           ),
    );
  }
}