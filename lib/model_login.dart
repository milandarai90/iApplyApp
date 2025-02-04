class LoginResponse{
  final String token;
  final String email;

  LoginResponse({required this.email,required this.token});

  factory LoginResponse.fromJson(Map<String,dynamic>json){
    return LoginResponse(email: json["email"] != null ? json["email"]:"", token: json["token"]!= null ? json["token"]: "");
  }
}
class LoginRequest{
  String email;
  String password;

  LoginRequest({required this.password,required this.email});
  Map<String,dynamic>toJson(){
    Map<String,dynamic> map={
      'email' : email.trim(),
      'password' : password.trim(),
    };
    return map;
  }
}