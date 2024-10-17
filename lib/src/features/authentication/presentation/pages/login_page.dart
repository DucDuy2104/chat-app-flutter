import 'package:chat_app/main.dart';
import 'package:chat_app/src/features/authentication/presentation/auth_providers.dart';
import 'package:chat_app/src/features/authentication/presentation/widgets/custom_button.dart';
import 'package:chat_app/src/features/authentication/presentation/widgets/custom_input.dart';
import 'package:chat_app/src/features/authentication/presentation/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants/shared/assets.dart';
import '../../../../constants/shared/colors.dart';
import '../../domain/user/user.dart';

class LoginPage extends ConsumerWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(userLoginProvider);

    userAsync.when(data: (user) {
      if (user != null) {
        // Delay the navigation until the build is complete
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go('/conversations');
        });
      }
    }, error: (err, stack) {
      debugPrint('lỗi login....');
    }, loading: () {
      debugPrint('login....');
    });

    return Scaffold(
      body: Container(
        color: lightBg,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(appLogo, width: 75, height: 75, fit: BoxFit.cover),
              Text(
                "Welcome Back!!!",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Login and enjoy your time",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              AppSpacer(60),
              SizedBox(
                  width: 285, child: CustomInput('email', emailController)),
              AppSpacer(20),
              SizedBox(
                  width: 285, child: CustomInput('password', passController)),
              AppSpacer(40),
              CustomButton(
                onTap: () {
                  debugPrint('button click..........');
                  if (emailController.text.isEmpty ||
                      passController.text.isEmpty) {
                    debugPrint('rỗng.................');
                  } else {
                    ref.read(userInputProvider.notifier).state = DataUserLogin(
                        emailController.text, passController.text);
                    ref.refresh(userLoginProvider);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
