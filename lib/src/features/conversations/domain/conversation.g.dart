// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationImpl _$$ConversationImplFromJson(Map<String, dynamic> json) =>
    _$ConversationImpl(
      id: json['_id'] as String,
      image: json['image'] as String,
      createdAt: json['createdAt'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastMessage:
          LastMessage.fromJson(json['lastMessage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConversationImplToJson(_$ConversationImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'participants': instance.participants,
      'lastMessage': instance.lastMessage,
    };

_$LastMessageImpl _$$LastMessageImplFromJson(Map<String, dynamic> json) =>
    _$LastMessageImpl(
      id: json['_id'] as String,
      senderId: json['senderId'] as String,
      conversationId: json['conversationId'] as String,
      content: json['content'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$LastMessageImplToJson(_$LastMessageImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'senderId': instance.senderId,
      'conversationId': instance.conversationId,
      'content': instance.content,
      'createdAt': instance.createdAt,
    };
