class User{
  String token;
  User(
      this.token,
      );

  User.fromJson(Map<String, dynamic> json){
    token = json['token'];
  }

  User.fromMap(Map<String, dynamic> map){
    token = map['Token'];
  }

  Map<String, dynamic> toJson() {
    var map = Map<String, dynamic>();
    map['token'] = token;
    return map;
  }

}