import 'package:chat_app/src/constants/shared/colors.dart';
import 'package:chat_app/src/constants/shared/fonts.dart';
import 'package:chat_app/src/constants/shared/sizes.dart';
import 'package:chat_app/src/features/authentication/presentation/widgets/spacer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConversationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderSize),
      child: Container(
        width: double.infinity,
        color: lightConversationBg,
        padding: const EdgeInsets.all(10),
        height: 77,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
                child: Image.network('https://www.vietnamworks.com/hrinsider/wp-content/uploads/2023/12/anh-den-ngau.jpeg', width: 50, height: 50)),
            AppSpacer(10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("User's Name", style: Theme.of(context).textTheme.titleMedium),
                  const Text("oke", style: TextStyle(
                    color: lightMessageColor,
                    fontFamily: appFont,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    height: 1.5
                  ))
                ],
              ),
            ),
            const Text("20:12 PM", style:  TextStyle(
              color: lightTextColor,
              fontFamily: appFont,
              fontSize: 12,
              height: 1.5,
              fontWeight: FontWeight.w300
            ))
          ],
        ),
      ),
    );
  }

}