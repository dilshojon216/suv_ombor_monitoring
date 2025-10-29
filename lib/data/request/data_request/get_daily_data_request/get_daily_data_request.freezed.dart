// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_daily_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetDailyDataRequest {

 String get stationId; String get month;
/// Create a copy of GetDailyDataRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDailyDataRequestCopyWith<GetDailyDataRequest> get copyWith => _$GetDailyDataRequestCopyWithImpl<GetDailyDataRequest>(this as GetDailyDataRequest, _$identity);

  /// Serializes this GetDailyDataRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDailyDataRequest&&(identical(other.stationId, stationId) || other.stationId == stationId)&&(identical(other.month, month) || other.month == month));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stationId,month);

@override
String toString() {
  return 'GetDailyDataRequest(stationId: $stationId, month: $month)';
}


}

/// @nodoc
abstract mixin class $GetDailyDataRequestCopyWith<$Res>  {
  factory $GetDailyDataRequestCopyWith(GetDailyDataRequest value, $Res Function(GetDailyDataRequest) _then) = _$GetDailyDataRequestCopyWithImpl;
@useResult
$Res call({
 String stationId, String month
});




}
/// @nodoc
class _$GetDailyDataRequestCopyWithImpl<$Res>
    implements $GetDailyDataRequestCopyWith<$Res> {
  _$GetDailyDataRequestCopyWithImpl(this._self, this._then);

  final GetDailyDataRequest _self;
  final $Res Function(GetDailyDataRequest) _then;

/// Create a copy of GetDailyDataRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stationId = null,Object? month = null,}) {
  return _then(_self.copyWith(
stationId: null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetDailyDataRequest].
extension GetDailyDataRequestPatterns on GetDailyDataRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetDailyDataRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDailyDataRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetDailyDataRequest value)  $default,){
final _that = this;
switch (_that) {
case _GetDailyDataRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetDailyDataRequest value)?  $default,){
final _that = this;
switch (_that) {
case _GetDailyDataRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String stationId,  String month)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDailyDataRequest() when $default != null:
return $default(_that.stationId,_that.month);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String stationId,  String month)  $default,) {final _that = this;
switch (_that) {
case _GetDailyDataRequest():
return $default(_that.stationId,_that.month);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String stationId,  String month)?  $default,) {final _that = this;
switch (_that) {
case _GetDailyDataRequest() when $default != null:
return $default(_that.stationId,_that.month);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetDailyDataRequest implements GetDailyDataRequest {
   _GetDailyDataRequest({required this.stationId, required this.month});
  factory _GetDailyDataRequest.fromJson(Map<String, dynamic> json) => _$GetDailyDataRequestFromJson(json);

@override final  String stationId;
@override final  String month;

/// Create a copy of GetDailyDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDailyDataRequestCopyWith<_GetDailyDataRequest> get copyWith => __$GetDailyDataRequestCopyWithImpl<_GetDailyDataRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetDailyDataRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDailyDataRequest&&(identical(other.stationId, stationId) || other.stationId == stationId)&&(identical(other.month, month) || other.month == month));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stationId,month);

@override
String toString() {
  return 'GetDailyDataRequest(stationId: $stationId, month: $month)';
}


}

/// @nodoc
abstract mixin class _$GetDailyDataRequestCopyWith<$Res> implements $GetDailyDataRequestCopyWith<$Res> {
  factory _$GetDailyDataRequestCopyWith(_GetDailyDataRequest value, $Res Function(_GetDailyDataRequest) _then) = __$GetDailyDataRequestCopyWithImpl;
@override @useResult
$Res call({
 String stationId, String month
});




}
/// @nodoc
class __$GetDailyDataRequestCopyWithImpl<$Res>
    implements _$GetDailyDataRequestCopyWith<$Res> {
  __$GetDailyDataRequestCopyWithImpl(this._self, this._then);

  final _GetDailyDataRequest _self;
  final $Res Function(_GetDailyDataRequest) _then;

/// Create a copy of GetDailyDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stationId = null,Object? month = null,}) {
  return _then(_GetDailyDataRequest(
stationId: null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
