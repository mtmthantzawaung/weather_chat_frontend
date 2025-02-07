// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['_id'] as String?,
      username: json['username'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      age: (json['age'] as num).toInt(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'role': instance.role,
      'age': instance.age,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
