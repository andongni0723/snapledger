// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_tile_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListTileData {

 String get title; VoidCallback get onClick; bool get enable;
/// Create a copy of ListTileData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListTileDataCopyWith<ListTileData> get copyWith => _$ListTileDataCopyWithImpl<ListTileData>(this as ListTileData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListTileData&&(identical(other.title, title) || other.title == title)&&(identical(other.onClick, onClick) || other.onClick == onClick)&&(identical(other.enable, enable) || other.enable == enable));
}


@override
int get hashCode => Object.hash(runtimeType,title,onClick,enable);

@override
String toString() {
  return 'ListTileData(title: $title, onClick: $onClick, enable: $enable)';
}


}

/// @nodoc
abstract mixin class $ListTileDataCopyWith<$Res>  {
  factory $ListTileDataCopyWith(ListTileData value, $Res Function(ListTileData) _then) = _$ListTileDataCopyWithImpl;
@useResult
$Res call({
 String title, void Function() onClick, bool enable
});




}
/// @nodoc
class _$ListTileDataCopyWithImpl<$Res>
    implements $ListTileDataCopyWith<$Res> {
  _$ListTileDataCopyWithImpl(this._self, this._then);

  final ListTileData _self;
  final $Res Function(ListTileData) _then;

/// Create a copy of ListTileData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? onClick = null,Object? enable = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,onClick: null == onClick ? _self.onClick : onClick // ignore: cast_nullable_to_non_nullable
as void Function(),enable: null == enable ? _self.enable : enable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ListTileData].
extension ListTileDataPatterns on ListTileData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ListTileNormal value)?  normal,TResult Function( _ListTileDropdown value)?  dropdown,TResult Function( _ListTileDetail value)?  detail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListTileNormal() when normal != null:
return normal(_that);case _ListTileDropdown() when dropdown != null:
return dropdown(_that);case _ListTileDetail() when detail != null:
return detail(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ListTileNormal value)  normal,required TResult Function( _ListTileDropdown value)  dropdown,required TResult Function( _ListTileDetail value)  detail,}){
final _that = this;
switch (_that) {
case _ListTileNormal():
return normal(_that);case _ListTileDropdown():
return dropdown(_that);case _ListTileDetail():
return detail(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ListTileNormal value)?  normal,TResult? Function( _ListTileDropdown value)?  dropdown,TResult? Function( _ListTileDetail value)?  detail,}){
final _that = this;
switch (_that) {
case _ListTileNormal() when normal != null:
return normal(_that);case _ListTileDropdown() when dropdown != null:
return dropdown(_that);case _ListTileDetail() when detail != null:
return detail(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String title,  String? subtitle,  IconData icon,  VoidCallback onClick,  bool needCheck,  String? checkTitle,  String? checkContent,  bool enable,  bool trailing)?  normal,TResult Function( String title,  IconData icon,  VoidCallback onClick,  Map<String, String> optionsMap,  String? selected,  void Function(int, String) onChanged,  bool enable)?  dropdown,TResult Function( String type,  String title,  String? subtitle,  String? content,  DateTime date,  Widget? trailingText,  VoidCallback onClick,  bool enable)?  detail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListTileNormal() when normal != null:
return normal(_that.title,_that.subtitle,_that.icon,_that.onClick,_that.needCheck,_that.checkTitle,_that.checkContent,_that.enable,_that.trailing);case _ListTileDropdown() when dropdown != null:
return dropdown(_that.title,_that.icon,_that.onClick,_that.optionsMap,_that.selected,_that.onChanged,_that.enable);case _ListTileDetail() when detail != null:
return detail(_that.type,_that.title,_that.subtitle,_that.content,_that.date,_that.trailingText,_that.onClick,_that.enable);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String title,  String? subtitle,  IconData icon,  VoidCallback onClick,  bool needCheck,  String? checkTitle,  String? checkContent,  bool enable,  bool trailing)  normal,required TResult Function( String title,  IconData icon,  VoidCallback onClick,  Map<String, String> optionsMap,  String? selected,  void Function(int, String) onChanged,  bool enable)  dropdown,required TResult Function( String type,  String title,  String? subtitle,  String? content,  DateTime date,  Widget? trailingText,  VoidCallback onClick,  bool enable)  detail,}) {final _that = this;
switch (_that) {
case _ListTileNormal():
return normal(_that.title,_that.subtitle,_that.icon,_that.onClick,_that.needCheck,_that.checkTitle,_that.checkContent,_that.enable,_that.trailing);case _ListTileDropdown():
return dropdown(_that.title,_that.icon,_that.onClick,_that.optionsMap,_that.selected,_that.onChanged,_that.enable);case _ListTileDetail():
return detail(_that.type,_that.title,_that.subtitle,_that.content,_that.date,_that.trailingText,_that.onClick,_that.enable);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String title,  String? subtitle,  IconData icon,  VoidCallback onClick,  bool needCheck,  String? checkTitle,  String? checkContent,  bool enable,  bool trailing)?  normal,TResult? Function( String title,  IconData icon,  VoidCallback onClick,  Map<String, String> optionsMap,  String? selected,  void Function(int, String) onChanged,  bool enable)?  dropdown,TResult? Function( String type,  String title,  String? subtitle,  String? content,  DateTime date,  Widget? trailingText,  VoidCallback onClick,  bool enable)?  detail,}) {final _that = this;
switch (_that) {
case _ListTileNormal() when normal != null:
return normal(_that.title,_that.subtitle,_that.icon,_that.onClick,_that.needCheck,_that.checkTitle,_that.checkContent,_that.enable,_that.trailing);case _ListTileDropdown() when dropdown != null:
return dropdown(_that.title,_that.icon,_that.onClick,_that.optionsMap,_that.selected,_that.onChanged,_that.enable);case _ListTileDetail() when detail != null:
return detail(_that.type,_that.title,_that.subtitle,_that.content,_that.date,_that.trailingText,_that.onClick,_that.enable);case _:
  return null;

}
}

}

/// @nodoc


class _ListTileNormal implements ListTileData {
  const _ListTileNormal({required this.title, this.subtitle, required this.icon, required this.onClick, this.needCheck = false, this.checkTitle, this.checkContent, this.enable = true, this.trailing = false});
  

@override final  String title;
 final  String? subtitle;
 final  IconData icon;
@override final  VoidCallback onClick;
@JsonKey() final  bool needCheck;
 final  String? checkTitle;
 final  String? checkContent;
@override@JsonKey() final  bool enable;
@JsonKey() final  bool trailing;

/// Create a copy of ListTileData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListTileNormalCopyWith<_ListTileNormal> get copyWith => __$ListTileNormalCopyWithImpl<_ListTileNormal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListTileNormal&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.onClick, onClick) || other.onClick == onClick)&&(identical(other.needCheck, needCheck) || other.needCheck == needCheck)&&(identical(other.checkTitle, checkTitle) || other.checkTitle == checkTitle)&&(identical(other.checkContent, checkContent) || other.checkContent == checkContent)&&(identical(other.enable, enable) || other.enable == enable)&&(identical(other.trailing, trailing) || other.trailing == trailing));
}


@override
int get hashCode => Object.hash(runtimeType,title,subtitle,icon,onClick,needCheck,checkTitle,checkContent,enable,trailing);

@override
String toString() {
  return 'ListTileData.normal(title: $title, subtitle: $subtitle, icon: $icon, onClick: $onClick, needCheck: $needCheck, checkTitle: $checkTitle, checkContent: $checkContent, enable: $enable, trailing: $trailing)';
}


}

/// @nodoc
abstract mixin class _$ListTileNormalCopyWith<$Res> implements $ListTileDataCopyWith<$Res> {
  factory _$ListTileNormalCopyWith(_ListTileNormal value, $Res Function(_ListTileNormal) _then) = __$ListTileNormalCopyWithImpl;
@override @useResult
$Res call({
 String title, String? subtitle, IconData icon, VoidCallback onClick, bool needCheck, String? checkTitle, String? checkContent, bool enable, bool trailing
});




}
/// @nodoc
class __$ListTileNormalCopyWithImpl<$Res>
    implements _$ListTileNormalCopyWith<$Res> {
  __$ListTileNormalCopyWithImpl(this._self, this._then);

  final _ListTileNormal _self;
  final $Res Function(_ListTileNormal) _then;

/// Create a copy of ListTileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? subtitle = freezed,Object? icon = null,Object? onClick = null,Object? needCheck = null,Object? checkTitle = freezed,Object? checkContent = freezed,Object? enable = null,Object? trailing = null,}) {
  return _then(_ListTileNormal(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,onClick: null == onClick ? _self.onClick : onClick // ignore: cast_nullable_to_non_nullable
as VoidCallback,needCheck: null == needCheck ? _self.needCheck : needCheck // ignore: cast_nullable_to_non_nullable
as bool,checkTitle: freezed == checkTitle ? _self.checkTitle : checkTitle // ignore: cast_nullable_to_non_nullable
as String?,checkContent: freezed == checkContent ? _self.checkContent : checkContent // ignore: cast_nullable_to_non_nullable
as String?,enable: null == enable ? _self.enable : enable // ignore: cast_nullable_to_non_nullable
as bool,trailing: null == trailing ? _self.trailing : trailing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ListTileDropdown implements ListTileData {
  const _ListTileDropdown({required this.title, required this.icon, required this.onClick, required final  Map<String, String> optionsMap, this.selected, required this.onChanged, this.enable = true}): _optionsMap = optionsMap;
  

@override final  String title;
 final  IconData icon;
@override final  VoidCallback onClick;
 final  Map<String, String> _optionsMap;
 Map<String, String> get optionsMap {
  if (_optionsMap is EqualUnmodifiableMapView) return _optionsMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_optionsMap);
}

 final  String? selected;
 final  void Function(int, String) onChanged;
@override@JsonKey() final  bool enable;

/// Create a copy of ListTileData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListTileDropdownCopyWith<_ListTileDropdown> get copyWith => __$ListTileDropdownCopyWithImpl<_ListTileDropdown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListTileDropdown&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.onClick, onClick) || other.onClick == onClick)&&const DeepCollectionEquality().equals(other._optionsMap, _optionsMap)&&(identical(other.selected, selected) || other.selected == selected)&&(identical(other.onChanged, onChanged) || other.onChanged == onChanged)&&(identical(other.enable, enable) || other.enable == enable));
}


@override
int get hashCode => Object.hash(runtimeType,title,icon,onClick,const DeepCollectionEquality().hash(_optionsMap),selected,onChanged,enable);

@override
String toString() {
  return 'ListTileData.dropdown(title: $title, icon: $icon, onClick: $onClick, optionsMap: $optionsMap, selected: $selected, onChanged: $onChanged, enable: $enable)';
}


}

/// @nodoc
abstract mixin class _$ListTileDropdownCopyWith<$Res> implements $ListTileDataCopyWith<$Res> {
  factory _$ListTileDropdownCopyWith(_ListTileDropdown value, $Res Function(_ListTileDropdown) _then) = __$ListTileDropdownCopyWithImpl;
@override @useResult
$Res call({
 String title, IconData icon, VoidCallback onClick, Map<String, String> optionsMap, String? selected, void Function(int, String) onChanged, bool enable
});




}
/// @nodoc
class __$ListTileDropdownCopyWithImpl<$Res>
    implements _$ListTileDropdownCopyWith<$Res> {
  __$ListTileDropdownCopyWithImpl(this._self, this._then);

  final _ListTileDropdown _self;
  final $Res Function(_ListTileDropdown) _then;

/// Create a copy of ListTileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? icon = null,Object? onClick = null,Object? optionsMap = null,Object? selected = freezed,Object? onChanged = null,Object? enable = null,}) {
  return _then(_ListTileDropdown(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,onClick: null == onClick ? _self.onClick : onClick // ignore: cast_nullable_to_non_nullable
as VoidCallback,optionsMap: null == optionsMap ? _self._optionsMap : optionsMap // ignore: cast_nullable_to_non_nullable
as Map<String, String>,selected: freezed == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as String?,onChanged: null == onChanged ? _self.onChanged : onChanged // ignore: cast_nullable_to_non_nullable
as void Function(int, String),enable: null == enable ? _self.enable : enable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ListTileDetail implements ListTileData {
  const _ListTileDetail({required this.type, required this.title, this.subtitle, this.content, required this.date, this.trailingText, required this.onClick, this.enable = true});
  

 final  String type;
@override final  String title;
 final  String? subtitle;
 final  String? content;
 final  DateTime date;
 final  Widget? trailingText;
@override final  VoidCallback onClick;
@override@JsonKey() final  bool enable;

/// Create a copy of ListTileData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListTileDetailCopyWith<_ListTileDetail> get copyWith => __$ListTileDetailCopyWithImpl<_ListTileDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListTileDetail&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.content, content) || other.content == content)&&(identical(other.date, date) || other.date == date)&&(identical(other.trailingText, trailingText) || other.trailingText == trailingText)&&(identical(other.onClick, onClick) || other.onClick == onClick)&&(identical(other.enable, enable) || other.enable == enable));
}


@override
int get hashCode => Object.hash(runtimeType,type,title,subtitle,content,date,trailingText,onClick,enable);

@override
String toString() {
  return 'ListTileData.detail(type: $type, title: $title, subtitle: $subtitle, content: $content, date: $date, trailingText: $trailingText, onClick: $onClick, enable: $enable)';
}


}

/// @nodoc
abstract mixin class _$ListTileDetailCopyWith<$Res> implements $ListTileDataCopyWith<$Res> {
  factory _$ListTileDetailCopyWith(_ListTileDetail value, $Res Function(_ListTileDetail) _then) = __$ListTileDetailCopyWithImpl;
@override @useResult
$Res call({
 String type, String title, String? subtitle, String? content, DateTime date, Widget? trailingText, VoidCallback onClick, bool enable
});




}
/// @nodoc
class __$ListTileDetailCopyWithImpl<$Res>
    implements _$ListTileDetailCopyWith<$Res> {
  __$ListTileDetailCopyWithImpl(this._self, this._then);

  final _ListTileDetail _self;
  final $Res Function(_ListTileDetail) _then;

/// Create a copy of ListTileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? title = null,Object? subtitle = freezed,Object? content = freezed,Object? date = null,Object? trailingText = freezed,Object? onClick = null,Object? enable = null,}) {
  return _then(_ListTileDetail(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,trailingText: freezed == trailingText ? _self.trailingText : trailingText // ignore: cast_nullable_to_non_nullable
as Widget?,onClick: null == onClick ? _self.onClick : onClick // ignore: cast_nullable_to_non_nullable
as VoidCallback,enable: null == enable ? _self.enable : enable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
