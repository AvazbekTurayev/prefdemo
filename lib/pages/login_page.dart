import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prefdemo/model/user_model.dart';
import 'package:prefdemo/pages/home_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:prefdemo/pages/signup_page.dart';
import 'package:prefdemo/services/pref_service.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static final String id="login_page";
  @override

  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

void _doLogin(){
  String email = emailController.text.toString().trim();
  String password = passwordController.text.toString().trim();
  User user = User.from(email: email, password: password);
  Prefs.storeUser(user);
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.all(20),
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //SizedBox(height: 10,),
            Text("Welcome back!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text("Log in to your existant account of Q Allure",style: TextStyle(fontSize: 16,color: Colors.grey),),
            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.blueAccent,),
                  color: Colors.white,
                ),
                child: Center(
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",hintStyle: TextStyle(fontSize: 20,color: Colors.grey),
                      prefixIcon: Icon(Icons.person_outline,color: Colors.grey,),
                      border: InputBorder.none,
                    ),
                  ),
                )
            ),
            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.blueAccent,),
                  color: Colors.white,
                ),
                child: Center(
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",hintStyle: TextStyle(fontSize: 20,color: Colors.grey),
                      prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                      border: InputBorder.none,
                    ),
                  ),
                )
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot password?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              child:  Container(
                margin: EdgeInsets.symmetric(horizontal: 95),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, HomePage.id);
                  },
                  child: Center(
                    child: Text("LOG IN",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              onTap: (){
                _doLogin();
              },
            ),
            SizedBox(height: 30,),
            Container(
              child: Center(
                child: Text("Or connect using",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.normal),),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 5,right: 5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: MaterialButton(
                          onPressed: (){},
                          color: Colors.blue.shade900,
                          height: 45,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Ionicons.logo_facebook, color: Colors.white,),
                              SizedBox(width: 10,),
                              Text("Facebook", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                            ],
                          )
                      ),
                    )
                ),
                Expanded(
                    child: Container(
                margin: EdgeInsets.only(left: 5,right: 5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: MaterialButton(
                        onPressed: (){},
                        color: Colors.red,
                        height: 45,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Ionicons.logo_google, color: Colors.white,),
                            SizedBox(width: 10,),
                            Text("Google", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    )
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?", style: TextStyle(fontSize: 16, color: Colors.grey.shade800),),
                SizedBox(width: 10,),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Text("Sign Up", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
