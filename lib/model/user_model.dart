class User{
  late String email;
  late String password;

  User({ required this.email, required this.password});
  User.from({ required this.email, required this.password});

  User.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        password = json['password'];

  Map<String, dynamic> toJson() =>{
    'email': email,
    'password': password,
  };
}

class Account{
  String fullname;
  String mail;
  String phone;
  String password;
  String confirmPassword;
  Account({ required this.mail,required this.password,required this.phone,required this.confirmPassword,required this.fullname});

  Account.from({required this.mail, required this.password,required this.phone,required this.confirmPassword,required this.fullname});

  Account.fromJson(Map<String, dynamic> json)
      : mail=json["mail"],
        confirmPassword=json["confirmPassword"],
        phone=json["phone"],
        fullname=json["fullname"],
        password=json["password"];

  Map<String,dynamic>toJson()=>{
    "mail":mail,
    "password":password,
    "confirmPassword":confirmPassword,
    "phone":phone,
    "fullname":fullname,
  };
}
