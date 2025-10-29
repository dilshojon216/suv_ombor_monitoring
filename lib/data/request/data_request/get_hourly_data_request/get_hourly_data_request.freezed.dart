// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_hourly_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetHourlyDataRequest {

 String get stationId;
/// Create a copy of GetHourlyDataRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetHourlyDataRequestCopyWith<GetHourlyDataRequest> get copyWith => _$GetHourlyDataRequestCopyWithImpl<GetHourlyDataRequest>(this as GetHourlyDataRequest, _$identity);

  /// Serializes this GetHourlyDataRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetHourlyDataRequest&&(identical(other.stationId, stationId) || other.stationId == stationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stationId);

@override
String toString() {
  return 'GetHourlyDataRequest(stationId: $stationId)';
}


}

/// @nodoc
abstract mixin class $GetHourlyDataRequestCopyWith<$Res>  {
  factory $GetHourlyDataRequestCopyWith(GetHourlyDataRequest value, $Res Function(GetHourlyDataRequest) _then) = _$GetHourlyDataRequestCopyWithImpl;
@useResult
$Res call({
 String stationId
});




}
/// @nodoc
class _$GetHourlyDataRequestCopyWithImpl<$Res>
    implements $GetHourlyDataRequestCopyWith<$Res> {
  _$GetHourlyDataRequestCopyWithImpl(this._self, this._then);

  final GetHourlyDataRequest _self;
  final $Res Function(GetHourlyDataRequest) _then;

/// Create a copy of GetHourlyDataRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stationId = null,}) {
  return _then(_self.copyWith(
stationId: null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetHourlyDataRequest].
extension GetHourlyDataRequestPatterns on GetHourlyDataRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetHourlyDataRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetHourlyDataRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetHourlyDataRequest value)  $default,){
final _that = this;
switch (_that) {
case _GetHourlyDataRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetHourlyDataRequest value)?  $default,){
final _that = this;
switch (_that) {
case _GetHourlyDataRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String stationId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetHourlyDataRequest() when $default != null:
return $default(_that.stationId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String stationId)  $default,) {final _that = this;
switch (_that) {
case _GetHourlyDataRequest():
return $default(_that.stationId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String stationId)?  $default,) {final _that = this;
switch (_that) {
case _GetHourlyDataRequest() when $default != null:
return $default(_that.stationId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetHourlyDataRequest implements GetHourlyDataRequest {
   _GetHourlyDataRequest({required this.stationId});
  factory _GetHourlyDataRequest.fromJson(Map<String, dynamic> json) => _$GetHourlyDataRequestFromJson(json);

@override final  String stationId;

/// Create a copy of GetHourlyDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetHourlyDataRequestCopyWith<_GetHourlyDataRequest> get copyWith => __$GetHourlyDataRequestCopyWithImpl<_GetHourlyDataRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetHourlyDataRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHourlyDataRequest&&(identical(other.stationId, stationId) || other.stationId == stationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stationId);

@override
String toString() {
  return 'GetHourlyDataRequest(stationId: $stationId)';
}


}

/// @nodoc
abstract mixin class _$GetHourlyDataRequestCopyWith<$Res> implements $GetHourlyDataRequestCopyWith<$Res> {
  factory _$GetHourlyDataRequestCopyWith(_GetHourlyDataRequest value, $Res Function(_GetHourlyDataRequest) _then) = __$GetHourlyDataRequestCopyWithImpl;
@override @useResult
$Res call({
 String stationId
});




}
/// @nodoc
class __$GetHourlyDataRequestCopyWithImpl<$Res>
    implements _$GetHourlyDataRequestCopyWith<$Res> {
  __$GetHourlyDataRequestCopyWithImpl(this._self, this._then);

  final _GetHourlyDataRequest _self;
  final $Res Function(_GetHourlyDataRequest) _then;

/// Create a copy of GetHourlyDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stationId = null,}) {
  return _then(_GetHourlyDataRequest(
stationId: null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
