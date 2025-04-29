// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserListItem {

 int get id; String get name; bool get completed;
/// Create a copy of UserListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserListItemCopyWith<UserListItem> get copyWith => _$UserListItemCopyWithImpl<UserListItem>(this as UserListItem, _$identity);

  /// Serializes this UserListItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserListItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.completed, completed) || other.completed == completed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,completed);

@override
String toString() {
  return 'UserListItem(id: $id, name: $name, completed: $completed)';
}


}

/// @nodoc
abstract mixin class $UserListItemCopyWith<$Res>  {
  factory $UserListItemCopyWith(UserListItem value, $Res Function(UserListItem) _then) = _$UserListItemCopyWithImpl;
@useResult
$Res call({
 int id, String name, bool completed
});




}
/// @nodoc
class _$UserListItemCopyWithImpl<$Res>
    implements $UserListItemCopyWith<$Res> {
  _$UserListItemCopyWithImpl(this._self, this._then);

  final UserListItem _self;
  final $Res Function(UserListItem) _then;

/// Create a copy of UserListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? completed = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserListItem implements UserListItem {
  const _UserListItem({required this.id, required this.name, required this.completed});
  factory _UserListItem.fromJson(Map<String, dynamic> json) => _$UserListItemFromJson(json);

@override final  int id;
@override final  String name;
@override final  bool completed;

/// Create a copy of UserListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserListItemCopyWith<_UserListItem> get copyWith => __$UserListItemCopyWithImpl<_UserListItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserListItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserListItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.completed, completed) || other.completed == completed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,completed);

@override
String toString() {
  return 'UserListItem(id: $id, name: $name, completed: $completed)';
}


}

/// @nodoc
abstract mixin class _$UserListItemCopyWith<$Res> implements $UserListItemCopyWith<$Res> {
  factory _$UserListItemCopyWith(_UserListItem value, $Res Function(_UserListItem) _then) = __$UserListItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, bool completed
});




}
/// @nodoc
class __$UserListItemCopyWithImpl<$Res>
    implements _$UserListItemCopyWith<$Res> {
  __$UserListItemCopyWithImpl(this._self, this._then);

  final _UserListItem _self;
  final $Res Function(_UserListItem) _then;

/// Create a copy of UserListItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? completed = null,}) {
  return _then(_UserListItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
