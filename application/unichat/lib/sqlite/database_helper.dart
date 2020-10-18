import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:unichat/models/user_model.dart';

class DatabaseHelper{
  static DatabaseHelper _databaseHelper;
  static Database _database;

  /// Table MyProfile
  String tbl_my_profile           = "MyProfile";
  String col_id                   = "id";
  String col_username             = "username";
  String col_first_name           = "first_name";
  String col_last_name            = "last_name";
  String col_email                = "email";
  String col_phone_number         = "phone_number";
  String col_profile_picture      = "profile_picture";

  String col_bio                  = "bio";
  String col_instagram            = "instagram";
  String col_telegram             = "telegram";
  String col_birth_date           = "birth_date";
  String col_relationship         = "relationship";

  String col_country              = "country";
  String col_city                 = "city";
  String col_university           = "university";
  String col_field                = "field";
  String col_entrance_year        = "entrance_year";

  String col_favorite_sport       = "favorite_sport";
  String col_favorite_book        = "favorite_book";
  String col_favorite_movie       = "favorite_movie";
  String col_favorite_tv_series   = "favorite_tv_series";
  String col_favorite_game        = "favorite_game";
  String col_favorite_to_travel   = "favorite_to_travel";
  String col_favorite_music       = "favorite_music";
  String col_background_color     = "background_color";
  String col_font_color           = "font_color";

  /// Table Token
  // String col_id    = "ID";
  String tbl_token    = "Token";
  String col_token    = "Token";

  DatabaseHelper._CreateInstance();

  factory DatabaseHelper(){
    if(_databaseHelper == null){
      _databaseHelper = DatabaseHelper._CreateInstance();
    }
    return _databaseHelper;
  }

  // Create Database if it's null
  Future<Database> get database async{
    if (_database == null)
      _database = await initializeDatabase();

    return _database;
  }

  // Create Database
  Future<Database> initializeDatabase() async{
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'HiCoffee.db');
    // Increase the version of db everytime update the tables
    Database database = await openDatabase(path, version: 1, onCreate: _createDB);
    return database;
  }

  // Create Tables
  void _createDB(Database db, int version) async{
    await db.execute(
        'CREATE TABLE IF NOT EXISTS $tbl_my_profile ('
            '$col_id INTEGER PRIMARY KEY AUTOINCREMENT,'
            '$col_username TEXT,'
            '$col_first_name TEXT,'
            '$col_last_name TEXT,'
            '$col_email TEXT,'
            '$col_phone_number TEXT,'
            '$col_profile_picture TEXT,'
            '$col_bio TEXT,'
            '$col_instagram TEXT,'
            '$col_telegram TEXT,'
            '$col_birth_date TEXT,'
            '$col_relationship BIT,'

            '$col_country TEXT,'
            '$col_city TEXT,'
            '$col_university TEXT,'
            '$col_field TEXT,'
            '$col_entrance_year INTEGER,'

            '$col_favorite_sport TEXT,'
            '$col_favorite_book TEXT,'
            '$col_favorite_movie TEXT,'
            '$col_favorite_tv_series TEXT,'
            '$col_favorite_game TEXT,'
            '$col_favorite_to_travel TEXT,'
            '$col_favorite_music TEXT,'
            '$col_background_color TEXT,'
            '$col_font_color TEXT)'
    );
    await db.execute(
        'CREATE TABLE IF NOT EXISTS $tbl_token ('
            '$col_id INTEGER PRIMARY KEY AUTOINCREMENT,'
            '$col_token TEXT)'
    );
  }

/// Table MyProfile
  ///
  // Select MyProfiles
  Future<List<Map<String, dynamic>>> selectMyProfile() async{
    Database db = await this.database;
    var result = await db.rawQuery(
        "Select * From $tbl_my_profile;"
    );
    if(result.isNotEmpty)
      print("DB Select MyProfile: $result");
    return result;
  }
  // Insert MyProfile
  Future<List<Map<String, dynamic>>> insertMyProfile(User user) async{
    deleteMyProfile();
    Database db = await this.database;
    var result;
    result = await db.rawQuery(
        "Insert Into $tbl_my_profile"
            "($col_username, $col_first_name, $col_last_name, $col_email, $col_phone_number, $col_profile_picture"
            "$col_bio, $col_instagram, $col_telegram, $col_birth_date, $col_relationship, "
            "$col_country, $col_city, $col_university, $col_field, $col_entrance_year, "
            "$col_favorite_sport, $col_favorite_book, $col_favorite_movie, $col_favorite_tv_series, $col_favorite_game, $col_favorite_to_travel, $col_favorite_music, $col_background_color, $col_font_color)"
            "Values "
            "('${user.username}', '${user.first_name}', '${user.last_name}', '${user.email}', '${user.phone_number}',  '${user.profile_picture}', "
            "'${user.bio}', '${user.instagram}', '${user.telegram}', '${user.birth_date}', '${user.relationship}', "
            "'${user.country}', '${user.city}', '${user.university}', '${user.field}', ${user.entrance_year}, "
            "'${user.favorite_sport}', '${user.favorite_book}', '${user.favorite_movie}', '${user.favorite_tv_series}', '${user.favorite_game}', '${user.favorite_to_travel}', '${user.favorite_music}', '${user.background_color}', '${user.font_color}');"
    );
    if(result.isNotEmpty)
      print("DB Insert MyProfile: $result");
    return result;
  }
  // Delete MyProfiles
  Future<List<Map<String, dynamic>>> deleteMyProfile() async{
    Database db = await this.database;
    var result = await db.rawQuery(
        "Delete From $tbl_my_profile;"
    );
    if(result.isNotEmpty)
      print("DB Delete MyProfileDB: $result");
    return result;
  }
  // Update MyProfile
  Future<List<Map<String, dynamic>>> updateMyProfile(User user, int id) async{
    Database db = await this.database;
    var result = await db.rawQuery(
        "UPDATE $tbl_my_profile "
            "SET "
            "$col_username = '${user.username}', $col_first_name = '${user.first_name}', $col_last_name = '${user.last_name}', $col_email = '${user.email}', $col_phone_number = '${user.phone_number}', $col_profile_picture = '${user.profile_picture}', "
            "$col_bio = '${user.bio}', $col_instagram = '${user.instagram}', $col_telegram = '${user.telegram}', $col_birth_date = '${user.birth_date}', $col_relationship = '${user.relationship}', "
            "$col_country = '${user.country}', $col_city = '${user.city}', $col_university = '${user.university}', $col_field = '${user.field}', $col_entrance_year = ${user.entrance_year}, "
            "$col_favorite_sport = '${user.favorite_sport}', $col_favorite_book = '${user.favorite_book}', $col_favorite_movie = '${user.favorite_movie}', $col_favorite_tv_series = '${user.favorite_tv_series}', $col_favorite_game = '${user.favorite_game}', $col_favorite_to_travel = '${user.favorite_to_travel}', $col_favorite_music = '${user.favorite_music}', $col_background_color = '${user.background_color}', $col_font_color = '${user.font_color}'"
            "WHERE $col_id = '$id'; ");
    if(result.isNotEmpty)
      print("DB Update MyProfileDB: $result");
    return result;
  }


/// Table Token
  ///
  // Insert Token
  Future<List<Map<String, dynamic>>> insertToken(String token) async{
    deleteToken();
    Database db = await this.database;
    var result = await db.rawQuery(
        "Insert Into $tbl_token ($col_token)"
            "VALUES ('$token');"
    );
    if(result.isNotEmpty)
      print("DB Insert Token: $result");
    return result;
  }

  // Select Token
  Future<List<Map<String, dynamic>>> selectToken() async{
    Database db = await this.database;
    var result = await db.rawQuery(
        "Select $col_token From $tbl_token"
    );
    return result;
  }

  // Delete Token
  Future<List<Map<String, dynamic>>> deleteToken() async{
    Database db = await this.database;
    var result = await db.rawQuery(
        "Delete From $tbl_token"
    );
    if(result.isNotEmpty)
      print("DB Delete Tokens: $result");
    return result;
  }
}

