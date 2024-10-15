import 'package:flutter/cupertino.dart';

class AppSpacer extends StatelessWidget {
  double size;


  AppSpacer(this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size, width: size);
  }

}