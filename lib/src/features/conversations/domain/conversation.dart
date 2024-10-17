import 'package:chat_app/src/features/authentication/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation.freezed.dart';
part 'conversation.g.dart';

@freezed
class Conversation with _$Conversation {
  factory Conversation({
    @JsonKey(name: '_id') required String id,
    required String image,
    required String createdAt,
    required List<User> participants,
    required LastMessage lastMessage
}) = _Conversation;
  factory Conversation.fromJson(Map<String, dynamic> json) => _$ConversationFromJson(json);
}

@freezed
class LastMessage with _$LastMessage {
  factory LastMessage({
    @JsonKey(name: '_id') required String id,
    required String senderId,
    required String conversationId,
    required String content,
    required String createdAt
}) = _LastMessage;
  factory LastMessage.fromJson(Map<String, dynamic> json) => _$LastMessageFromJson(json);
}
