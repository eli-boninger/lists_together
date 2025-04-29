// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserListItem _$UserListItemFromJson(Map<String, dynamic> json) =>
    _UserListItem(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$UserListItemToJson(_UserListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'completed': instance.completed,
    };
