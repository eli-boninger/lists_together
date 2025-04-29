import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lists_together/domain/models/list/user_list_item.dart';

part 'user_list.freezed.dart';
part 'user_list.g.dart';

@freezed
abstract class UserList with _$UserList {
  const factory UserList({
    required int id,
    required String name,
    required List<UserListItem> items,
  }) = _UserList;

  factory UserList.fromJson(Map<String, Object?> json) =>
      _$UserListFromJson(json);
}
