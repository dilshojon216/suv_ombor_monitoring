// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_hourly_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetHourlyDataResponse {

 int get statusCode; List<HourlyData> get data;
/// Create a copy of GetHourlyDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetHourlyDataResponseCopyWith<GetHourlyDataResponse> get copyWith => _$GetHourlyDataResponseCopyWithImpl<GetHourlyDataResponse>(this as GetHourlyDataResponse, _$identity);

  /// Serializes this GetHourlyDataResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetHourlyDataResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetHourlyDataResponse(statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetHourlyDataResponseCopyWith<$Res>  {
  factory $GetHourlyDataResponseCopyWith(GetHourlyDataResponse value, $Res Function(GetHourlyDataResponse) _then) = _$GetHourlyDataResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, List<HourlyData> data
});




}
/// @nodoc
class _$GetHourlyDataResponseCopyWithImpl<$Res>
    implements $GetHourlyDataResponseCopyWith<$Res> {
  _$GetHourlyDataResponseCopyWithImpl(this._self, this._then);

  final GetHourlyDataResponse _self;
  final $Res Function(GetHourlyDataResponse) _then;

/// Create a copy of GetHourlyDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? data = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<HourlyData>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetHourlyDataResponse].
extension GetHourlyDataResponsePatterns on GetHourlyDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetHourlyDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetHourlyDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetHourlyDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetHourlyDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetHourlyDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetHourlyDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int statusCode,  List<HourlyData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetHourlyDataResponse() when $default != null:
return $default(_that.statusCode,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int statusCode,  List<HourlyData> data)  $default,) {final _that = this;
switch (_that) {
case _GetHourlyDataResponse():
return $default(_that.statusCode,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int statusCode,  List<HourlyData> data)?  $default,) {final _that = this;
switch (_that) {
case _GetHourlyDataResponse() when $default != null:
return $default(_that.statusCode,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetHourlyDataResponse implements GetHourlyDataResponse {
   _GetHourlyDataResponse({required this.statusCode, required final  List<HourlyData> data}): _data = data;
  factory _GetHourlyDataResponse.fromJson(Map<String, dynamic> json) => _$GetHourlyDataResponseFromJson(json);

@override final  int statusCode;
 final  List<HourlyData> _data;
@override List<HourlyData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of GetHourlyDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetHourlyDataResponseCopyWith<_GetHourlyDataResponse> get copyWith => __$GetHourlyDataResponseCopyWithImpl<_GetHourlyDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetHourlyDataResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHourlyDataResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetHourlyDataResponse(statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetHourlyDataResponseCopyWith<$Res> implements $GetHourlyDataResponseCopyWith<$Res> {
  factory _$GetHourlyDataResponseCopyWith(_GetHourlyDataResponse value, $Res Function(_GetHourlyDataResponse) _then) = __$GetHourlyDataResponseCopyWithImpl;
@override @useResult
$Res call({
 int statusCode, List<HourlyData> data
});




}
/// @nodoc
class __$GetHourlyDataResponseCopyWithImpl<$Res>
    implements _$GetHourlyDataResponseCopyWith<$Res> {
  __$GetHourlyDataResponseCopyWithImpl(this._self, this._then);

  final _GetHourlyDataResponse _self;
  final $Res Function(_GetHourlyDataResponse) _then;

/// Create a copy of GetHourlyDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? data = null,}) {
  return _then(_GetHourlyDataResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<HourlyData>,
  ));
}


}

// dart format on
