// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatImpl _$$ChatImplFromJson(Map<String, dynamic> json) => _$ChatImpl(
      chatName: json['chatName'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      userList: (json['userList'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      isGroup: json['isGroup'] as bool? ?? false,
      lastMessage: json['lastMessage'] as String,
      createdAt: const DateConverter().fromJson(json['createdAt'] as String),
      isActive: json['isActive'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChatImplToJson(_$ChatImpl instance) =>
    <String, dynamic>{
      'chatName': instance.chatName,
      'user': instance.user,
      'userList': instance.userList,
      'isGroup': instance.isGroup,
      'lastMessage': instance.lastMessage,
      'createdAt': const DateConverter().toJson(instance.createdAt),
      'isActive': instance.isActive,
    };
