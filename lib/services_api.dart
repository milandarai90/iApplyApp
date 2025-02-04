import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:iapply/model_login.dart';

class ApiServices{
  Future<LoginResponse> login(LoginRequest requestData)async{
    final uri = "https://iapply.techenfield.com/api/login";
    final url = Uri.parse(uri);
    final response =await http.post(url , body: requestData.toJson());
    if(response.statusCode == 200 || response.statusCode == 400){
      return LoginResponse.fromJson(json.decode(response.body));
    }else{
      throw Exception('Failed to Login');
    }
  }
}