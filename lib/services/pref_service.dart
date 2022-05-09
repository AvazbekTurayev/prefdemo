import 'dart:convert';

import 'package:prefdemo/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs{
  //User Related
  static storeUser(User user) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(user);
    prefs.setString("user", stringUser);
  }

  static Future<User?>  loadUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringUser = prefs.getString("stringUser");
    if(stringUser == null || stringUser.isEmpty){
      return null;
    }
    Map<String,dynamic> map = jsonDecode(stringUser);
    return User.fromJson(map);
  }
  static Future<bool>  removeUser(bool user) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("user");
  }

  //Account Related
  static storeAccount(Account user) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringAccount = jsonEncode(user);
    prefs.setString("user", stringAccount);
  }

  static Future<Account?>  loadAccount() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringAccount = prefs.getString("stringAccount");
    if(stringAccount == null || stringAccount.isEmpty){
      return null;
    }
    Map<String, dynamic> map = jsonDecode(stringAccount);
    return Account.fromJson(map);

  }
  static Future<bool>  removeAccount() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("user");
  }

}