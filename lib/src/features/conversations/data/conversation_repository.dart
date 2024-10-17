import 'package:chat_app/src/api/dio_client.dart';
import 'package:chat_app/src/features/conversations/domain/conversation.dart';
import 'package:flutter/cupertino.dart';

class HttpConversationRepository {
  DioClient dioClient = DioClient();
  Future<List<Conversation>> getConversations(String userId) async {
    debugPrint('get conversations......................');
    try {
      final response = await dioClient.dio.get('/conversation/get-conversation');
      List<dynamic> conversationsJson = response.data['data'];
      List<Conversation> conversations = conversationsJson.map((c) => Conversation.fromJson(c)).toList();
      return conversations;
    }catch (e){
      debugPrint('Lỗi lấy Conversations: $e');
    }
  }
}