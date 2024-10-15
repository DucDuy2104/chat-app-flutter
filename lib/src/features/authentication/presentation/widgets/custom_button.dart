import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/shared/colors.dart';

class CustomButton extends StatelessWidget {
  final onTap;
  const CustomButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Container(
          width: 172,
          height: 46,
          color: lightBottonColor,
          child: const Center(
            child: Text('Login', style: TextStyle(
              color: Colors.white
            )
            ),
          ),
        ),
      ),
    );
  }
  
}