import 'package:flutter/material.dart';
import 'package:prefdemo/pages/login_page.dart';
import 'package:prefdemo/services/pref_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.name, this.email, this.phone, this.password}) : super(key: key);
  static final String id = "home_page";
  final String? name;
  final String? email;
  final String? phone;
  final String? password;
  @override

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          child: Text("Log Out", style: TextStyle(fontSize: 24, color: Colors.white),),
          height: 50,
          color: Colors.red,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        ),
      )
          );
  }
}
