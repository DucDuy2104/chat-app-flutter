// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['_id'] as String,
      name: json['userName'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String,
      friends:
          (json['friends'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userName': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'friends': instance.friends,
    };
