// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  lists:
      (json['lists'] as List<dynamic>)
          .map((e) => UserList.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'lists': instance.lists,
};
