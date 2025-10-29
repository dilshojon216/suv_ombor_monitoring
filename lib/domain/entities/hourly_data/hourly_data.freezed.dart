// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HourlyData {

 num get level; num get volume; num get correction; DateTime get date;
/// Create a copy of HourlyData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HourlyDataCopyWith<HourlyData> get copyWith => _$HourlyDataCopyWithImpl<HourlyData>(this as HourlyData, _$identity);

  /// Serializes this HourlyData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HourlyData&&(identical(other.level, level) || other.level == level)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.correction, correction) || other.correction == correction)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,volume,correction,date);

@override
String toString() {
  return 'HourlyData(level: $level, volume: $volume, correction: $correction, date: $date)';
}


}

/// @nodoc
abstract mixin class $HourlyDataCopyWith<$Res>  {
  factory $HourlyDataCopyWith(HourlyData value, $Res Function(HourlyData) _then) = _$HourlyDataCopyWithImpl;
@useResult
$Res call({
 num level, num volume, num correction, DateTime date
});




}
/// @nodoc
class _$HourlyDataCopyWithImpl<$Res>
    implements $HourlyDataCopyWith<$Res> {
  _$HourlyDataCopyWithImpl(this._self, this._then);

  final HourlyData _self;
  final $Res Function(HourlyData) _then;

/// Create a copy of HourlyData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level = null,Object? volume = null,Object? correction = null,Object? date = null,}) {
  return _then(_self.copyWith(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as num,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as num,correction: null == correction ? _self.correction : correction // ignore: cast_nullable_to_non_nullable
as num,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [HourlyData].
extension HourlyDataPatterns on HourlyData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HourlyData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HourlyData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HourlyData value)  $default,){
final _that = this;
switch (_that) {
case _HourlyData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HourlyData value)?  $default,){
final _that = this;
switch (_that) {
case _HourlyData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( num level,  num volume,  num correction,  DateTime date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HourlyData() when $default != null:
return $default(_that.level,_that.volume,_that.correction,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( num level,  num volume,  num correction,  DateTime date)  $default,) {final _that = this;
switch (_that) {
case _HourlyData():
return $default(_that.level,_that.volume,_that.correction,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( num level,  num volume,  num correction,  DateTime date)?  $default,) {final _that = this;
switch (_that) {
case _HourlyData() when $default != null:
return $default(_that.level,_that.volume,_that.correction,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HourlyData implements HourlyData {
   _HourlyData({required this.level, required this.volume, required this.correction, required this.date});
  factory _HourlyData.fromJson(Map<String, dynamic> json) => _$HourlyDataFromJson(json);

@override final  num level;
@override final  num volume;
@override final  num correction;
@override final  DateTime date;

/// Create a copy of HourlyData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HourlyDataCopyWith<_HourlyData> get copyWith => __$HourlyDataCopyWithImpl<_HourlyData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HourlyDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HourlyData&&(identical(other.level, level) || other.level == level)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.correction, correction) || other.correction == correction)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,volume,correction,date);

@override
String toString() {
  return 'HourlyData(level: $level, volume: $volume, correction: $correction, date: $date)';
}


}

/// @nodoc
abstract mixin class _$HourlyDataCopyWith<$Res> implements $HourlyDataCopyWith<$Res> {
  factory _$HourlyDataCopyWith(_HourlyData value, $Res Function(_HourlyData) _then) = __$HourlyDataCopyWithImpl;
@override @useResult
$Res call({
 num level, num volume, num correction, DateTime date
});




}
/// @nodoc
class __$HourlyDataCopyWithImpl<$Res>
    implements _$HourlyDataCopyWith<$Res> {
  __$HourlyDataCopyWithImpl(this._self, this._then);

  final _HourlyData _self;
  final $Res Function(_HourlyData) _then;

/// Create a copy of HourlyData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level = null,Object? volume = null,Object? correction = null,Object? date = null,}) {
  return _then(_HourlyData(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as num,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as num,correction: null == correction ? _self.correction : correction // ignore: cast_nullable_to_non_nullable
as num,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
