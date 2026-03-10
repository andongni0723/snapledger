// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionRecordModel {

 String get id; String get title; DateTime get date; double get amount; String get category; String? get type; String? get note;
/// Create a copy of TransactionRecordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionRecordModelCopyWith<TransactionRecordModel> get copyWith => _$TransactionRecordModelCopyWithImpl<TransactionRecordModel>(this as TransactionRecordModel, _$identity);

  /// Serializes this TransactionRecordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.category, category) || other.category == category)&&(identical(other.type, type) || other.type == type)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,date,amount,category,type,note);

@override
String toString() {
  return 'TransactionRecordModel(id: $id, title: $title, date: $date, amount: $amount, category: $category, type: $type, note: $note)';
}


}

/// @nodoc
abstract mixin class $TransactionRecordModelCopyWith<$Res>  {
  factory $TransactionRecordModelCopyWith(TransactionRecordModel value, $Res Function(TransactionRecordModel) _then) = _$TransactionRecordModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, DateTime date, double amount, String category, String? type, String? note
});




}
/// @nodoc
class _$TransactionRecordModelCopyWithImpl<$Res>
    implements $TransactionRecordModelCopyWith<$Res> {
  _$TransactionRecordModelCopyWithImpl(this._self, this._then);

  final TransactionRecordModel _self;
  final $Res Function(TransactionRecordModel) _then;

/// Create a copy of TransactionRecordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? date = null,Object? amount = null,Object? category = null,Object? type = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionRecordModel].
extension TransactionRecordModelPatterns on TransactionRecordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionRecordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionRecordModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionRecordModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionRecordModel():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionRecordModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionRecordModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  DateTime date,  double amount,  String category,  String? type,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionRecordModel() when $default != null:
return $default(_that.id,_that.title,_that.date,_that.amount,_that.category,_that.type,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  DateTime date,  double amount,  String category,  String? type,  String? note)  $default,) {final _that = this;
switch (_that) {
case _TransactionRecordModel():
return $default(_that.id,_that.title,_that.date,_that.amount,_that.category,_that.type,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  DateTime date,  double amount,  String category,  String? type,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _TransactionRecordModel() when $default != null:
return $default(_that.id,_that.title,_that.date,_that.amount,_that.category,_that.type,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionRecordModel implements TransactionRecordModel {
  const _TransactionRecordModel({required this.id, required this.title, required this.date, required this.amount, required this.category, this.type, this.note});
  factory _TransactionRecordModel.fromJson(Map<String, dynamic> json) => _$TransactionRecordModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  DateTime date;
@override final  double amount;
@override final  String category;
@override final  String? type;
@override final  String? note;

/// Create a copy of TransactionRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionRecordModelCopyWith<_TransactionRecordModel> get copyWith => __$TransactionRecordModelCopyWithImpl<_TransactionRecordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionRecordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.category, category) || other.category == category)&&(identical(other.type, type) || other.type == type)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,date,amount,category,type,note);

@override
String toString() {
  return 'TransactionRecordModel(id: $id, title: $title, date: $date, amount: $amount, category: $category, type: $type, note: $note)';
}


}

/// @nodoc
abstract mixin class _$TransactionRecordModelCopyWith<$Res> implements $TransactionRecordModelCopyWith<$Res> {
  factory _$TransactionRecordModelCopyWith(_TransactionRecordModel value, $Res Function(_TransactionRecordModel) _then) = __$TransactionRecordModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, DateTime date, double amount, String category, String? type, String? note
});




}
/// @nodoc
class __$TransactionRecordModelCopyWithImpl<$Res>
    implements _$TransactionRecordModelCopyWith<$Res> {
  __$TransactionRecordModelCopyWithImpl(this._self, this._then);

  final _TransactionRecordModel _self;
  final $Res Function(_TransactionRecordModel) _then;

/// Create a copy of TransactionRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? date = null,Object? amount = null,Object? category = null,Object? type = freezed,Object? note = freezed,}) {
  return _then(_TransactionRecordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
