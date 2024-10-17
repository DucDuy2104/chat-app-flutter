import 'package:chat_app/src/constants/shared/sizes.dart';
import 'package:chat_app/src/features/authentication/presentation/auth_providers.dart';
import 'package:chat_app/src/features/conversations/presentation/pages/conversation_header.dart';
import 'package:chat_app/src/features/conversations/presentation/widgets/conversation_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/shared/colors.dart';

class Conversation extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(userLoginProvider);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: paddingPage,
        color: lightBg,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userAsync.when(data: (user) => ConversationHeader(user),
                error: (err, stack) => Icon(Icons.error),
                loading: () => CircularProgressIndicator()),
            ConversationItem()
          ],
        ),
      ),
    );
  }

}