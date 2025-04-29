import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_item.freezed.dart';
part 'user_list_item.g.dart';

@freezed
abstract class UserListItem with _$UserListItem {
  const factory UserListItem({required String name, required bool completed}) =
      _UserListItem;

  factory UserListItem.fromJson(Map<String, Object?> json) =>
      _$UserListItemFromJson(json);
}
