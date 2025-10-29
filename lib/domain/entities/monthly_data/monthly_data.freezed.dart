// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonthlyData {

 num get level; num get volume; int get monthNumber;
/// Create a copy of MonthlyData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyDataCopyWith<MonthlyData> get copyWith => _$MonthlyDataCopyWithImpl<MonthlyData>(this as MonthlyData, _$identity);

  /// Serializes this MonthlyData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyData&&(identical(other.level, level) || other.level == level)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.monthNumber, monthNumber) || other.monthNumber == monthNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,volume,monthNumber);

@override
String toString() {
  return 'MonthlyData(level: $level, volume: $volume, monthNumber: $monthNumber)';
}


}

/// @nodoc
abstract mixin class $MonthlyDataCopyWith<$Res>  {
  factory $MonthlyDataCopyWith(MonthlyData value, $Res Function(MonthlyData) _then) = _$MonthlyDataCopyWithImpl;
@useResult
$Res call({
 num level, num volume, int monthNumber
});




}
/// @nodoc
class _$MonthlyDataCopyWithImpl<$Res>
    implements $MonthlyDataCopyWith<$Res> {
  _$MonthlyDataCopyWithImpl(this._self, this._then);

  final MonthlyData _self;
  final $Res Function(MonthlyData) _then;

/// Create a copy of MonthlyData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level = null,Object? volume = null,Object? monthNumber = null,}) {
  return _then(_self.copyWith(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as num,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as num,monthNumber: null == monthNumber ? _self.monthNumber : monthNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlyData].
extension MonthlyDataPatterns on MonthlyData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyData value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyData value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( num level,  num volume,  int monthNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyData() when $default != null:
return $default(_that.level,_that.volume,_that.monthNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( num level,  num volume,  int monthNumber)  $default,) {final _that = this;
switch (_that) {
case _MonthlyData():
return $default(_that.level,_that.volume,_that.monthNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( num level,  num volume,  int monthNumber)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyData() when $default != null:
return $default(_that.level,_that.volume,_that.monthNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlyData implements MonthlyData {
   _MonthlyData({required this.level, required this.volume, required this.monthNumber});
  factory _MonthlyData.fromJson(Map<String, dynamic> json) => _$MonthlyDataFromJson(json);

@override final  num level;
@override final  num volume;
@override final  int monthNumber;

/// Create a copy of MonthlyData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyDataCopyWith<_MonthlyData> get copyWith => __$MonthlyDataCopyWithImpl<_MonthlyData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlyDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyData&&(identical(other.level, level) || other.level == level)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.monthNumber, monthNumber) || other.monthNumber == monthNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,volume,monthNumber);

@override
String toString() {
  return 'MonthlyData(level: $level, volume: $volume, monthNumber: $monthNumber)';
}


}

/// @nodoc
abstract mixin class _$MonthlyDataCopyWith<$Res> implements $MonthlyDataCopyWith<$Res> {
  factory _$MonthlyDataCopyWith(_MonthlyData value, $Res Function(_MonthlyData) _then) = __$MonthlyDataCopyWithImpl;
@override @useResult
$Res call({
 num level, num volume, int monthNumber
});




}
/// @nodoc
class __$MonthlyDataCopyWithImpl<$Res>
    implements _$MonthlyDataCopyWith<$Res> {
  __$MonthlyDataCopyWithImpl(this._self, this._then);

  final _MonthlyData _self;
  final $Res Function(_MonthlyData) _then;

/// Create a copy of MonthlyData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level = null,Object? volume = null,Object? monthNumber = null,}) {
  return _then(_MonthlyData(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as num,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as num,monthNumber: null == monthNumber ? _self.monthNumber : monthNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
