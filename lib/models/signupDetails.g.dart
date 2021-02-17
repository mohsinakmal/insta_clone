// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signupDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupDetails _$SignupDetailsFromJson(Map<String, dynamic> json) {
  return SignupDetails()
    ..email = json['email'] as String
    ..fullName = json['fullName'] as String
    ..userName = json['userName'] as String
    ..password = json['password'] as String
    ..id = json['id'] as String;
}

Map<String, dynamic> _$SignupDetailsToJson(SignupDetails instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fullName': instance.fullName,
      'userName': instance.userName,
      'password': instance.password,
      'id': instance.id
    };
