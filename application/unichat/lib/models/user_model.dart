import 'package:flutter/material.dart';


class User{
  String username;
  String first_name;
  String last_name;
  String email;
  String phone_number;
  String profile_picture;

  String bio;
  String instagram;
  String telegram;
  String birth_date;
  bool relationship;

  String country;
  String city;
  String university;
  String field;
  int entrance_year;

  String job;
  String favorite_sport;
  String favorite_book;
  String favorite_movie;
  String favorite_tv_series;
  String favorite_game;
  String favorite_to_travel;
  String favorite_music;
  Color background_color;
  Color font_color;
  String background_image;
  int background_opacity;


  User(
      this.username,
      this.first_name,
      this.last_name,
      this.email,
      this.phone_number,
      this.profile_picture,

      this.bio,
      this.instagram,
      this.telegram,
      this.birth_date,
      this.relationship,

      this.country,
      this.city,
      this.university,
      this.field,
      this.entrance_year,

      this.job,
      this.favorite_sport,
      this.favorite_book,
      this.favorite_movie,
      this.favorite_tv_series,
      this.favorite_game,
      this.favorite_to_travel,
      this.favorite_music,
      this.background_color,
      this.font_color,
      this.background_image,
      this.background_opacity,
      );

  User.fromJson(Map<String, dynamic> json){
    username            = json['username'];
    first_name          = json['first_name'];
    last_name           = json['last_name'];
    email               = json['email'];
    phone_number        = json['phone_number'];
    profile_picture     = json['profile_picture'];
    bio                 = json['bio'];
    instagram           = json['instagram'];
    telegram            = json['telegram'];
    birth_date          = json['birth_date'];
    relationship        = json['relationship'];
    country             = json['country'];
    city                = json['city'];
    university          = json['university'];
    field               = json['field'];
    entrance_year       = json['entrance_year'];
    job                 = json['job'];
    favorite_sport      = json['favorite_sport'];
    favorite_book       = json['favorite_book'];
    favorite_movie      = json['favorite_movie'];
    favorite_tv_series  = json['favorite_tv_series'];
    favorite_game       = json['favorite_game'];
    favorite_to_travel  = json['favorite_to_travel'];
    favorite_music      = json['favorite_music'];
    background_color    = json['background_color'];
    font_color          = json['font_color'];
    background_image    = json['background_image'];
    background_opacity  = json['background_opacity'];
  }

  Map<String, dynamic> toJson(){
    var map = Map<String, dynamic>();
    map['username']           = username;
    map['first_name']         = first_name;
    map['last_name']          = last_name;
    map['email']              = email;
    map['phone_number']       = phone_number;
    map['profile_picture']    = profile_picture;
    map['bio']                = bio;
    map['instagram']          = instagram;
    map['telegram']           = telegram;
    map['birth_date']         = birth_date;
    map['relationship']       = relationship;
    map['country']            = country;
    map['city']               = city;
    map['university']         = university;
    map['field']              = field;
    map['entrance_year']      = entrance_year;
    map['job']                = job;
    map['favorite_sport']     = favorite_sport;
    map['favorite_book']      = favorite_book;
    map['favorite_movie']     = favorite_movie;
    map['favorite_tv_series'] = favorite_tv_series;
    map['favorite_game']      = favorite_game;
    map['favorite_to_travel'] = favorite_to_travel;
    map['favorite_music']     = favorite_music;
    map['background_color']   = background_color;
    map['font_color']         = font_color;
    map['background_image']   = background_image;
    map['background_opacity'] = background_opacity;
    return map;
  }


}