// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_monthly_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetMonthlyDataRequest {

 String get stationId; int get year;
/// Create a copy of GetMonthlyDataRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMonthlyDataRequestCopyWith<GetMonthlyDataRequest> get copyWith => _$GetMonthlyDataRequestCopyWithImpl<GetMonthlyDataRequest>(this as GetMonthlyDataRequest, _$identity);

  /// Serializes this GetMonthlyDataRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMonthlyDataRequest&&(identical(other.stationId, stationId) || other.stationId == stationId)&&(identical(other.year, year) || other.year == year));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stationId,year);

@override
String toString() {
  return 'GetMonthlyDataRequest(stationId: $stationId, year: $year)';
}


}

/// @nodoc
abstract mixin class $GetMonthlyDataRequestCopyWith<$Res>  {
  factory $GetMonthlyDataRequestCopyWith(GetMonthlyDataRequest value, $Res Function(GetMonthlyDataRequest) _then) = _$GetMonthlyDataRequestCopyWithImpl;
@useResult
$Res call({
 String stationId, int year
});




}
/// @nodoc
class _$GetMonthlyDataRequestCopyWithImpl<$Res>
    implements $GetMonthlyDataRequestCopyWith<$Res> {
  _$GetMonthlyDataRequestCopyWithImpl(this._self, this._then);

  final GetMonthlyDataRequest _self;
  final $Res Function(GetMonthlyDataRequest) _then;

/// Create a copy of GetMonthlyDataRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stationId = null,Object? year = null,}) {
  return _then(_self.copyWith(
stationId: null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetMonthlyDataRequest].
extension GetMonthlyDataRequestPatterns on GetMonthlyDataRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetMonthlyDataRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMonthlyDataRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetMonthlyDataRequest value)  $default,){
final _that = this;
switch (_that) {
case _GetMonthlyDataRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetMonthlyDataRequest value)?  $default,){
final _that = this;
switch (_that) {
case _GetMonthlyDataRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String stationId,  int year)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMonthlyDataRequest() when $default != null:
return $default(_that.stationId,_that.year);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String stationId,  int year)  $default,) {final _that = this;
switch (_that) {
case _GetMonthlyDataRequest():
return $default(_that.stationId,_that.year);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String stationId,  int year)?  $default,) {final _that = this;
switch (_that) {
case _GetMonthlyDataRequest() when $default != null:
return $default(_that.stationId,_that.year);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetMonthlyDataRequest implements GetMonthlyDataRequest {
   _GetMonthlyDataRequest({required this.stationId, required this.year});
  factory _GetMonthlyDataRequest.fromJson(Map<String, dynamic> json) => _$GetMonthlyDataRequestFromJson(json);

@override final  String stationId;
@override final  int year;

/// Create a copy of GetMonthlyDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMonthlyDataRequestCopyWith<_GetMonthlyDataRequest> get copyWith => __$GetMonthlyDataRequestCopyWithImpl<_GetMonthlyDataRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetMonthlyDataRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMonthlyDataRequest&&(identical(other.stationId, stationId) || other.stationId == stationId)&&(identical(other.year, year) || other.year == year));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stationId,year);

@override
String toString() {
  return 'GetMonthlyDataRequest(stationId: $stationId, year: $year)';
}


}

/// @nodoc
abstract mixin class _$GetMonthlyDataRequestCopyWith<$Res> implements $GetMonthlyDataRequestCopyWith<$Res> {
  factory _$GetMonthlyDataRequestCopyWith(_GetMonthlyDataRequest value, $Res Function(_GetMonthlyDataRequest) _then) = __$GetMonthlyDataRequestCopyWithImpl;
@override @useResult
$Res call({
 String stationId, int year
});




}
/// @nodoc
class __$GetMonthlyDataRequestCopyWithImpl<$Res>
    implements _$GetMonthlyDataRequestCopyWith<$Res> {
  __$GetMonthlyDataRequestCopyWithImpl(this._self, this._then);

  final _GetMonthlyDataRequest _self;
  final $Res Function(_GetMonthlyDataRequest) _then;

/// Create a copy of GetMonthlyDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stationId = null,Object? year = null,}) {
  return _then(_GetMonthlyDataRequest(
stationId: null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
