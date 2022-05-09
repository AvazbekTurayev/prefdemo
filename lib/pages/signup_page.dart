import 'package:flutter/material.dart';
import 'package:prefdemo/model/user_model.dart';
import 'package:prefdemo/services/pref_service.dart';

import 'login_page.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);
  static final String id='signup_page';
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final mailController=TextEditingController();
  final fullnameController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmPasswordController=TextEditingController();
  final phoneController=TextEditingController();

  void _doSignup(){
    String fullname=fullnameController.text.toString().trim();
    String mail=mailController.text.toString().trim();
    String password=passwordController.text.toString().trim();
    String phone=phoneController.text.toString().trim();
    String confirmPassword=confirmPasswordController.text.toString().trim();
    Account user= Account.from(mail: mail, password: password, confirmPassword: confirmPassword, fullname: fullname, phone: phone);
    Prefs.storeAccount(user);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(

          padding: EdgeInsets.all(20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.centerLeft,
                child: BackButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
              ),
              SizedBox(height: 20,),
              Text("Let's Get Started!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Create an account to Q Allure to get all features", style: TextStyle(color: Colors.grey,fontSize: 15),),
              SizedBox(height: 20,),
          Container(
            height: 65,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(0, 10),
                    blurRadius: 20,
                  )
                ]
            ),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child:  TextField(
                controller: fullnameController,
                style: TextStyle(
                    height: 1.7,
                    fontSize: 20
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.person, size: 20,),
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.grey[300], fontSize: 20,),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.grey.shade100, width: 0.0),
                  ),
                ),
              ),
            ),
          ),
              SizedBox(height: 20,),
              Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          offset: Offset(0, 10),
                          blurRadius: 20,
                        )
                      ]
                  ),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child:  TextField(
                      controller: mailController,
                      style: TextStyle(
                          height: 1.7,
                          fontSize: 20
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.email, size: 20,),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey[300], fontSize: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.grey.shade100, width: 0.0),
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 20,),
              Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          offset: Offset(0, 10),
                          blurRadius: 20,
                        )
                      ]
                  ),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child:  TextField(
                      controller: phoneController,
                      style: TextStyle(
                          height: 1.7,
                          fontSize: 20
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.phone_android, size: 20,),
                        hintText: "Phone",
                        hintStyle: TextStyle(color: Colors.grey[300], fontSize: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.grey.shade100, width: 0.0),
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 20,),
              Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          offset: Offset(0, 10),
                          blurRadius: 20,
                        )
                      ]
                  ),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child:  TextField(
                      controller: passwordController,
                      style: TextStyle(
                          height: 1.7,
                          fontSize: 20
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock, size: 20,),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey[300], fontSize: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.grey.shade100, width: 0.0),
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 20,),
              Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          offset: Offset(0, 10),
                          blurRadius: 20,
                        )
                      ]
                  ),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child:  TextField(
                      controller: confirmPasswordController,
                      style: TextStyle(
                          height: 1.7,
                          fontSize: 20
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock_open, size: 20,),
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(color: Colors.grey[300], fontSize: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.grey.shade100, width: 0.0),
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 30,),
              Container(
                height: 60,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 70),
                child: MaterialButton(
                  onPressed: (){
                    _doSignup();
                  },
                  color: Colors.blue.shade900,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: Text("CREATE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: TextStyle(fontSize: 16, color: Colors.grey.shade800),),
                  SizedBox(width: 10,),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text("Login here", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  )
                ],
              )
            ]
          ),
        )
      )
    );
  }
}
