import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lists_together/domain/models/list/user_list.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    required String name,
    required List<UserList> lists,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
