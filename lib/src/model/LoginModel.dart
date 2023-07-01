import 'dart:convert';

LoginModel loginFromJson(String str) => LoginModel.fromJson(json.decode(str));

class LoginModel {
  String? message;
  String? acessToken;

  LoginModel({this.message, this.acessToken});

  LoginModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    acessToken = json['acess_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['acess_token'] = this.acessToken;
    return data;
  }
}
