import 'package:json_annotation/json_annotation.dart';

// part 'is_device_indentified.body.g.dart';

@JsonSerializable()

class IsDeviceIdentifiedBody {
  String login;
  String password;

  IsDeviceIdentifiedBody({
    required String login,
    required String password,
  })   : login = login.trim(),
        password = password.trim();

  factory IsDeviceIdentifiedBody.fromJson(Map<String, dynamic> json) =>
       IsDeviceIdentifiedBody(
        login: json['login'] as String,
        password: json['password'] as String,
      );

  Map<String, dynamic> toJson() =>  <String, dynamic>{
      'login': login,
      'password': password,
    };
}