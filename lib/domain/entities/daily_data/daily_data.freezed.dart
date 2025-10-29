// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyData {

 num get level; num get volume; DateTime get date;
/// Create a copy of DailyData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyDataCopyWith<DailyData> get copyWith => _$DailyDataCopyWithImpl<DailyData>(this as DailyData, _$identity);

  /// Serializes this DailyData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyData&&(identical(other.level, level) || other.level == level)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,volume,date);

@override
String toString() {
  return 'DailyData(level: $level, volume: $volume, date: $date)';
}


}

/// @nodoc
abstract mixin class $DailyDataCopyWith<$Res>  {
  factory $DailyDataCopyWith(DailyData value, $Res Function(DailyData) _then) = _$DailyDataCopyWithImpl;
@useResult
$Res call({
 num level, num volume, DateTime date
});




}
/// @nodoc
class _$DailyDataCopyWithImpl<$Res>
    implements $DailyDataCopyWith<$Res> {
  _$DailyDataCopyWithImpl(this._self, this._then);

  final DailyData _self;
  final $Res Function(DailyData) _then;

/// Create a copy of DailyData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level = null,Object? volume = null,Object? date = null,}) {
  return _then(_self.copyWith(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as num,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as num,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyData].
extension DailyDataPatterns on DailyData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyData value)  $default,){
final _that = this;
switch (_that) {
case _DailyData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyData value)?  $default,){
final _that = this;
switch (_that) {
case _DailyData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( num level,  num volume,  DateTime date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyData() when $default != null:
return $default(_that.level,_that.volume,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( num level,  num volume,  DateTime date)  $default,) {final _that = this;
switch (_that) {
case _DailyData():
return $default(_that.level,_that.volume,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( num level,  num volume,  DateTime date)?  $default,) {final _that = this;
switch (_that) {
case _DailyData() when $default != null:
return $default(_that.level,_that.volume,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyData implements DailyData {
   _DailyData({required this.level, required this.volume, required this.date});
  factory _DailyData.fromJson(Map<String, dynamic> json) => _$DailyDataFromJson(json);

@override final  num level;
@override final  num volume;
@override final  DateTime date;

/// Create a copy of DailyData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyDataCopyWith<_DailyData> get copyWith => __$DailyDataCopyWithImpl<_DailyData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyData&&(identical(other.level, level) || other.level == level)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,volume,date);

@override
String toString() {
  return 'DailyData(level: $level, volume: $volume, date: $date)';
}


}

/// @nodoc
abstract mixin class _$DailyDataCopyWith<$Res> implements $DailyDataCopyWith<$Res> {
  factory _$DailyDataCopyWith(_DailyData value, $Res Function(_DailyData) _then) = __$DailyDataCopyWithImpl;
@override @useResult
$Res call({
 num level, num volume, DateTime date
});




}
/// @nodoc
class __$DailyDataCopyWithImpl<$Res>
    implements _$DailyDataCopyWith<$Res> {
  __$DailyDataCopyWithImpl(this._self, this._then);

  final _DailyData _self;
  final $Res Function(_DailyData) _then;

/// Create a copy of DailyData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level = null,Object? volume = null,Object? date = null,}) {
  return _then(_DailyData(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as num,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as num,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
