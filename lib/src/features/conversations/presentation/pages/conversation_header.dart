import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat_app/src/constants/shared/colors.dart';
import 'package:chat_app/src/constants/shared/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../authentication/domain/user/user.dart';
import '../../../authentication/presentation/widgets/spacer.dart';

class ConversationHeader extends StatelessWidget {
  User? user;

  ConversationHeader(this.user);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: CachedNetworkImage(
                imageUrl: user!.avatar, width: 35, height: 35,fit: BoxFit.cover)),
        AppSpacer(10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user?.name ?? "", style: Theme.of(context).textTheme.titleLarge),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Active",
                    style: TextStyle(
                        color: activeColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: appFont,
                        height: 1.5)),
                AppSpacer(2),
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(width: 10, height: 10, color: activeColor))
              ],
            )
          ],
        )
      ],
    );
  }
}
