
class User{
  String username;
  String first_name;
  String last_name;
  String email;
  String instagram;
  String telegram;
  String bio;
  String phone_number;
  String country;
  String city;
  String university;
  String field;

  String favorite_sport;
  String favorite_book;
  String favorite_movie;
  String favorite_tv_series;
  String favorite_game;
  String favorite_to_travel;
  String favorite_music;
  String favorite_color;

  int entrance_year;
  DateTime birth_date;
  bool relationship;

  User(
      this.username,
      this.first_name,
      this.last_name,
      this.email,
      this.instagram,
      this.telegram,
      this.bio,
      this.phone_number,
      this.country,
      this.city,
      this.university,
      this.field,
      this.favorite_sport,
      this.favorite_book,
      this.favorite_movie,
      this.favorite_tv_series,
      this.favorite_game,
      this.favorite_to_travel,
      this.favorite_music,
      this.favorite_color,
      this.entrance_year,
      this.birth_date,
      this.relationship,
      );

  User.fromJson(Map<String, dynamic> json){
    username            = json['username'];
    first_name          = json['first_name'];
    last_name           = json['last_name'];
    email               = json['email'];
    instagram           = json['instagram'];
    telegram            = json['telegram'];
    bio                 = json['bio'];
    phone_number        = json['phone_number'];
    country             = json['country'];
    city                = json['city'];
    university          = json['university'];
    field               = json['field'];
    favorite_sport      = json['favorite_sport'];
    favorite_book       = json['favorite_book'];
    favorite_movie      = json['favorite_movie'];
    favorite_tv_series  = json['favorite_tv_series'];
    favorite_game       = json['favorite_game'];
    favorite_to_travel  = json['favorite_to_travel'];
    favorite_music      = json['favorite_music'];
    favorite_color      = json['favorite_color'];
    entrance_year       = json['entrance_year'];
    birth_date          = json['birth_date'];
    relationship        = json['relationship'];
  }

  Map<String, dynamic> toJson(){
    var map = Map<String, dynamic>();
    map['username']           = username;
    map['first_name']         = first_name;
    map['last_name']          = last_name;
    map['email']              = email;
    map['telegram']           = telegram;
    map['bio']                = bio;
    map['phone_number']       = phone_number;
    map['country']            = country;
    map['city']               = city;
    map['university']         = university;
    map['field']              = field;
    map['favorite_sport']     = favorite_sport;
    map['favorite_book']      = favorite_book;
    map['favorite_movie']     = favorite_movie;
    map['favorite_tv_series'] = favorite_tv_series;
    map['favorite_game']      = favorite_game;
    map['favorite_to_travel'] = favorite_to_travel;
    map['favorite_music']     = favorite_music;
    map['favorite_color']     = favorite_color;
    map['entrance_year']      = entrance_year;
    map['birth_date']         = birth_date;
    map['relationship']       = relationship;
    return map;
  }


}