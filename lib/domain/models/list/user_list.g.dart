// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserList _$UserListFromJson(Map<String, dynamic> json) => _UserList(
  name: json['name'] as String,
  items:
      (json['items'] as List<dynamic>)
          .map((e) => UserListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$UserListToJson(_UserList instance) => <String, dynamic>{
  'name': instance.name,
  'items': instance.items,
};
