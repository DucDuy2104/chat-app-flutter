
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/shared/colors.dart';
import '../../../../constants/shared/fonts.dart';
import '../../../../constants/shared/sizes.dart';

class CustomInput extends ConsumerWidget {

  String hint;
  TextEditingController controller;


  CustomInput(this.hint, this.controller);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Màu nền của TextField
        borderRadius: BorderRadius.circular(borderSize),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Màu bóng
            spreadRadius: 2, // Độ lan tỏa của bóng
            blurRadius: 5, // Độ mờ của bóng
            offset: Offset(0, 3), // Vị trí bóng
          ),
        ],
      ),
      child: TextField(
        style: Theme.of(context).textTheme.titleMedium,
        controller: controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: lightInputFillColor,
            hintText: hint,
            hintStyle: const TextStyle(
                color: lightHintColor,
                fontFamily: appFont,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.5),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(borderSize))),

      ),
    );
  }
}
