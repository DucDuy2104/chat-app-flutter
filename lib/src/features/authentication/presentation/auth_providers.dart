import 'package:chat_app/src/features/authentication/data/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/user/user.dart';

final userInputProvider = StateProvider<DataUserLogin>((ref) {
  return DataUserLogin("", "");
});

final userLoginProvider = FutureProvider.autoDispose<User?>((ref) async {
  final inputData = ref.watch(userInputProvider);
  if(inputData.email.isEmpty || inputData.password.isEmpty) {
    return null;
  }
  final user = await ref.watch(httpAuthRepositoryProvider).login(inputData.email, inputData.password);
  return user;
 });