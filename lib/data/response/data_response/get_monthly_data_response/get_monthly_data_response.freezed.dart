// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_monthly_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetMonthlyDataResponse {

 int get statusCode; String get message; List<MonthlyData> get stations;
/// Create a copy of GetMonthlyDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMonthlyDataResponseCopyWith<GetMonthlyDataResponse> get copyWith => _$GetMonthlyDataResponseCopyWithImpl<GetMonthlyDataResponse>(this as GetMonthlyDataResponse, _$identity);

  /// Serializes this GetMonthlyDataResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMonthlyDataResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.stations, stations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,message,const DeepCollectionEquality().hash(stations));

@override
String toString() {
  return 'GetMonthlyDataResponse(statusCode: $statusCode, message: $message, stations: $stations)';
}


}

/// @nodoc
abstract mixin class $GetMonthlyDataResponseCopyWith<$Res>  {
  factory $GetMonthlyDataResponseCopyWith(GetMonthlyDataResponse value, $Res Function(GetMonthlyDataResponse) _then) = _$GetMonthlyDataResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, String message, List<MonthlyData> stations
});




}
/// @nodoc
class _$GetMonthlyDataResponseCopyWithImpl<$Res>
    implements $GetMonthlyDataResponseCopyWith<$Res> {
  _$GetMonthlyDataResponseCopyWithImpl(this._self, this._then);

  final GetMonthlyDataResponse _self;
  final $Res Function(GetMonthlyDataResponse) _then;

/// Create a copy of GetMonthlyDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? message = null,Object? stations = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,stations: null == stations ? _self.stations : stations // ignore: cast_nullable_to_non_nullable
as List<MonthlyData>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetMonthlyDataResponse].
extension GetMonthlyDataResponsePatterns on GetMonthlyDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetMonthlyDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMonthlyDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetMonthlyDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetMonthlyDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetMonthlyDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetMonthlyDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int statusCode,  String message,  List<MonthlyData> stations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMonthlyDataResponse() when $default != null:
return $default(_that.statusCode,_that.message,_that.stations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int statusCode,  String message,  List<MonthlyData> stations)  $default,) {final _that = this;
switch (_that) {
case _GetMonthlyDataResponse():
return $default(_that.statusCode,_that.message,_that.stations);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int statusCode,  String message,  List<MonthlyData> stations)?  $default,) {final _that = this;
switch (_that) {
case _GetMonthlyDataResponse() when $default != null:
return $default(_that.statusCode,_that.message,_that.stations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetMonthlyDataResponse implements GetMonthlyDataResponse {
   _GetMonthlyDataResponse({required this.statusCode, required this.message, required final  List<MonthlyData> stations}): _stations = stations;
  factory _GetMonthlyDataResponse.fromJson(Map<String, dynamic> json) => _$GetMonthlyDataResponseFromJson(json);

@override final  int statusCode;
@override final  String message;
 final  List<MonthlyData> _stations;
@override List<MonthlyData> get stations {
  if (_stations is EqualUnmodifiableListView) return _stations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stations);
}


/// Create a copy of GetMonthlyDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMonthlyDataResponseCopyWith<_GetMonthlyDataResponse> get copyWith => __$GetMonthlyDataResponseCopyWithImpl<_GetMonthlyDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetMonthlyDataResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMonthlyDataResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._stations, _stations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,message,const DeepCollectionEquality().hash(_stations));

@override
String toString() {
  return 'GetMonthlyDataResponse(statusCode: $statusCode, message: $message, stations: $stations)';
}


}

/// @nodoc
abstract mixin class _$GetMonthlyDataResponseCopyWith<$Res> implements $GetMonthlyDataResponseCopyWith<$Res> {
  factory _$GetMonthlyDataResponseCopyWith(_GetMonthlyDataResponse value, $Res Function(_GetMonthlyDataResponse) _then) = __$GetMonthlyDataResponseCopyWithImpl;
@override @useResult
$Res call({
 int statusCode, String message, List<MonthlyData> stations
});




}
/// @nodoc
class __$GetMonthlyDataResponseCopyWithImpl<$Res>
    implements _$GetMonthlyDataResponseCopyWith<$Res> {
  __$GetMonthlyDataResponseCopyWithImpl(this._self, this._then);

  final _GetMonthlyDataResponse _self;
  final $Res Function(_GetMonthlyDataResponse) _then;

/// Create a copy of GetMonthlyDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? message = null,Object? stations = null,}) {
  return _then(_GetMonthlyDataResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,stations: null == stations ? _self._stations : stations // ignore: cast_nullable_to_non_nullable
as List<MonthlyData>,
  ));
}


}

// dart format on
