// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_requaste.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequaste _$SignUpRequasteFromJson(Map<String, dynamic> json) =>
    SignUpRequaste(
      email: json['email'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
      fullName: json['fullName'] as String,
    );

Map<String, dynamic> _$SignUpRequasteToJson(SignUpRequaste instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
      'fullName': instance.fullName,
    };
