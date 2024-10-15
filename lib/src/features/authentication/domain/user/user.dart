import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'userName') required String name,
    required String email,
    required String avatar,
    required List<String> friends
}) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}


class DataUserLogin {
  String email;
  String password;

  DataUserLogin(this.email, this.password);
}