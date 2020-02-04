import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter_bloc/model/User.dart';

class NetworkProvider{
  String url="https://reqres.in/api/users?page=2";

  Future<UserList> getUserDetails() async{
    final response = await http.get(url);
    if(response.statusCode==200){
      return UserList.fromJson(jsonDecode(response.body));
    }
    else{
      print("Problem");
    }
  }
}