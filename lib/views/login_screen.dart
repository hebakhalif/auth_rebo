import 'package:flutter/material.dart';
import 'package:login/views/forgetpassword_screen.dart';
import 'package:login/views/login_register.dart';
import 'package:login/views/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


   //var emailController=  TextEditingController();
//var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
            leading: IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
               (context)=> LoginRegister()));
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
                   Center(
                     child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/photo_2024-09-03_19-10-16.jpg"),
                     ),
                   ),
               
                   Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Login",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
                      ),
                      SizedBox(height: 12,),
                     
                      Text("Login to continue using the app"),
                      SizedBox(height: 20,),
                      Text("Email",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                     
                          SizedBox(height: 20,),
                     
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 16),
                         child: TextFormField( 
                            //controller: emailController, // المتغيرات
                          keyboardType: TextInputType.emailAddress,// بتضيف لي في الكيبورد علامه الايميل بتسهل ع المسخدم 
                             decoration: InputDecoration(
                          labelText:
                           "enter your email",
                          prefixIcon: Icon(Icons.email),// بتخلي الايكون في البدايه عادي 
                                           
                          border: OutlineInputBorder(// دي لوحدها بتعمل مربع لو من غيرها هيبقي في خط واحد فقط تحت 
                            borderRadius: BorderRadius.circular(25),// لو عايزه اتحكم في الزوايه بتاعت التيكت فورم فيلد 
                          ),
                           ),),
                       ),
                       SizedBox(height: 10,),
                        Text("Password",
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
                           "enter Password",
                           suffixIcon: Icon(Icons.remove_red_eye), // بتخلي الايكون في البدايه عادي 
                                           
                          border: OutlineInputBorder(// دي لوحدها بتعمل مربع لو من غيرها هيبقي في خط واحد فقط تحت 
                            borderRadius: BorderRadius.circular(25),// لو عايزه اتحكم في الزوايه بتاعت التيكت فورم فيلد 
                          ),
                           ),),
                       ),
                     
                       Padding(
                         padding: const EdgeInsets.only(left: 230),
                         child: TextButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder:
                                          (context)=> ForgetpasswordScreen()));
                         },
                          child: Text("Forgot Password? ",
                          style: TextStyle(fontSize: 18),
                          )),
                       ) ,
                     
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 20),
                           child: ElevatedButton(
                            onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder:
                                          (context)=> LoginRegister()));
                                               },
                           child: Text(" Login",
                           style: TextStyle(color: Colors.white,
                           fontSize: 18
                           ),
                           ), 
                           style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(390, 50)
                           ),
                           ),
                         ),
                        SizedBox(height: 25,),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1.0,
                              indent: 10,
                              endIndent: 10,
                            ),
                          ),
                          Text("Or Login with",
                          style: TextStyle(
                            color: Colors.grey
                          ),
                          ),
                                    
                           Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1.0,
                              indent: 10,
                              endIndent: 10,
                            ),
                          ),
                         ],),
                                   SizedBox(height: 20,),
                     
                          Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     SocialButton(
                      icon: Icons.facebook,
                      color: Colors.blue,
                      onPressed: () {
                        // قم بإضافة عملية تسجيل الدخول بالفيسبوك هنا
                      },
                                     ),
                                     SizedBox(width: 20),
                                     SocialButton(
                      icon: Icons.g_mobiledata,
                      color: Colors.red,
                      onPressed: () {
                        // قم بإضافة عملية تسجيل الدخول بجوجل هنا
                      },
                                     ),
                                     SizedBox(width: 20),
                                     SocialButton(
                      icon: Icons.apple,
                      color: Colors.black,
                      onPressed: () {
                        // قم بإضافة عملية تسجيل الدخول بأبل هنا
                      },
                                     ),
                                   ],
                                 ),
                           SizedBox(height: 30,),
                               Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey,fontSize: 15
                      ),
                                     ),
                                     TextButton(
                      onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:
                                    (context)=> RegisterScreen()));  // إضافة عملية فتح صفحة التسجيل هنا
                      },
                      
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.blue,
                        fontSize: 18
                        ),
                      ),
                                     ),
                                   ],
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



class SocialButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  SocialButton({required this.icon, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 80,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
            
          
          backgroundColor:  Colors.white, // لون الخلفية للأيقونة
          padding: EdgeInsets.all(10),
          elevation: 3,
        ),
        child: Icon(icon, color: color, size: 30),
      ),
    );
  }
}

