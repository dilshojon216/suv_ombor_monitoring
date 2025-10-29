// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_daily_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetDailyDataResponse {

 int get statusCode; String get message; List<DailyData> get data;
/// Create a copy of GetDailyDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDailyDataResponseCopyWith<GetDailyDataResponse> get copyWith => _$GetDailyDataResponseCopyWithImpl<GetDailyDataResponse>(this as GetDailyDataResponse, _$identity);

  /// Serializes this GetDailyDataResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDailyDataResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetDailyDataResponse(statusCode: $statusCode, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetDailyDataResponseCopyWith<$Res>  {
  factory $GetDailyDataResponseCopyWith(GetDailyDataResponse value, $Res Function(GetDailyDataResponse) _then) = _$GetDailyDataResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, String message, List<DailyData> data
});




}
/// @nodoc
class _$GetDailyDataResponseCopyWithImpl<$Res>
    implements $GetDailyDataResponseCopyWith<$Res> {
  _$GetDailyDataResponseCopyWithImpl(this._self, this._then);

  final GetDailyDataResponse _self;
  final $Res Function(GetDailyDataResponse) _then;

/// Create a copy of GetDailyDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DailyData>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetDailyDataResponse].
extension GetDailyDataResponsePatterns on GetDailyDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetDailyDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDailyDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetDailyDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetDailyDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetDailyDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetDailyDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int statusCode,  String message,  List<DailyData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDailyDataResponse() when $default != null:
return $default(_that.statusCode,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int statusCode,  String message,  List<DailyData> data)  $default,) {final _that = this;
switch (_that) {
case _GetDailyDataResponse():
return $default(_that.statusCode,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int statusCode,  String message,  List<DailyData> data)?  $default,) {final _that = this;
switch (_that) {
case _GetDailyDataResponse() when $default != null:
return $default(_that.statusCode,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetDailyDataResponse implements GetDailyDataResponse {
   _GetDailyDataResponse({required this.statusCode, required this.message, required final  List<DailyData> data}): _data = data;
  factory _GetDailyDataResponse.fromJson(Map<String, dynamic> json) => _$GetDailyDataResponseFromJson(json);

@override final  int statusCode;
@override final  String message;
 final  List<DailyData> _data;
@override List<DailyData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of GetDailyDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDailyDataResponseCopyWith<_GetDailyDataResponse> get copyWith => __$GetDailyDataResponseCopyWithImpl<_GetDailyDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetDailyDataResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDailyDataResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetDailyDataResponse(statusCode: $statusCode, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetDailyDataResponseCopyWith<$Res> implements $GetDailyDataResponseCopyWith<$Res> {
  factory _$GetDailyDataResponseCopyWith(_GetDailyDataResponse value, $Res Function(_GetDailyDataResponse) _then) = __$GetDailyDataResponseCopyWithImpl;
@override @useResult
$Res call({
 int statusCode, String message, List<DailyData> data
});




}
/// @nodoc
class __$GetDailyDataResponseCopyWithImpl<$Res>
    implements _$GetDailyDataResponseCopyWith<$Res> {
  __$GetDailyDataResponseCopyWithImpl(this._self, this._then);

  final _GetDailyDataResponse _self;
  final $Res Function(_GetDailyDataResponse) _then;

/// Create a copy of GetDailyDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? message = null,Object? data = null,}) {
  return _then(_GetDailyDataResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DailyData>,
  ));
}


}

// dart format on
