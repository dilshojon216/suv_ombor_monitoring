// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_selection_day_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSelectionDayDataRequest {

 String get day; String get stationsId;
/// Create a copy of GetSelectionDayDataRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSelectionDayDataRequestCopyWith<GetSelectionDayDataRequest> get copyWith => _$GetSelectionDayDataRequestCopyWithImpl<GetSelectionDayDataRequest>(this as GetSelectionDayDataRequest, _$identity);

  /// Serializes this GetSelectionDayDataRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSelectionDayDataRequest&&(identical(other.day, day) || other.day == day)&&(identical(other.stationsId, stationsId) || other.stationsId == stationsId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,stationsId);

@override
String toString() {
  return 'GetSelectionDayDataRequest(day: $day, stationsId: $stationsId)';
}


}

/// @nodoc
abstract mixin class $GetSelectionDayDataRequestCopyWith<$Res>  {
  factory $GetSelectionDayDataRequestCopyWith(GetSelectionDayDataRequest value, $Res Function(GetSelectionDayDataRequest) _then) = _$GetSelectionDayDataRequestCopyWithImpl;
@useResult
$Res call({
 String day, String stationsId
});




}
/// @nodoc
class _$GetSelectionDayDataRequestCopyWithImpl<$Res>
    implements $GetSelectionDayDataRequestCopyWith<$Res> {
  _$GetSelectionDayDataRequestCopyWithImpl(this._self, this._then);

  final GetSelectionDayDataRequest _self;
  final $Res Function(GetSelectionDayDataRequest) _then;

/// Create a copy of GetSelectionDayDataRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? stationsId = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,stationsId: null == stationsId ? _self.stationsId : stationsId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetSelectionDayDataRequest].
extension GetSelectionDayDataRequestPatterns on GetSelectionDayDataRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetSelectionDayDataRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSelectionDayDataRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetSelectionDayDataRequest value)  $default,){
final _that = this;
switch (_that) {
case _GetSelectionDayDataRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetSelectionDayDataRequest value)?  $default,){
final _that = this;
switch (_that) {
case _GetSelectionDayDataRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String day,  String stationsId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSelectionDayDataRequest() when $default != null:
return $default(_that.day,_that.stationsId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String day,  String stationsId)  $default,) {final _that = this;
switch (_that) {
case _GetSelectionDayDataRequest():
return $default(_that.day,_that.stationsId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String day,  String stationsId)?  $default,) {final _that = this;
switch (_that) {
case _GetSelectionDayDataRequest() when $default != null:
return $default(_that.day,_that.stationsId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetSelectionDayDataRequest implements GetSelectionDayDataRequest {
   _GetSelectionDayDataRequest({required this.day, required this.stationsId});
  factory _GetSelectionDayDataRequest.fromJson(Map<String, dynamic> json) => _$GetSelectionDayDataRequestFromJson(json);

@override final  String day;
@override final  String stationsId;

/// Create a copy of GetSelectionDayDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSelectionDayDataRequestCopyWith<_GetSelectionDayDataRequest> get copyWith => __$GetSelectionDayDataRequestCopyWithImpl<_GetSelectionDayDataRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetSelectionDayDataRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSelectionDayDataRequest&&(identical(other.day, day) || other.day == day)&&(identical(other.stationsId, stationsId) || other.stationsId == stationsId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,stationsId);

@override
String toString() {
  return 'GetSelectionDayDataRequest(day: $day, stationsId: $stationsId)';
}


}

/// @nodoc
abstract mixin class _$GetSelectionDayDataRequestCopyWith<$Res> implements $GetSelectionDayDataRequestCopyWith<$Res> {
  factory _$GetSelectionDayDataRequestCopyWith(_GetSelectionDayDataRequest value, $Res Function(_GetSelectionDayDataRequest) _then) = __$GetSelectionDayDataRequestCopyWithImpl;
@override @useResult
$Res call({
 String day, String stationsId
});




}
/// @nodoc
class __$GetSelectionDayDataRequestCopyWithImpl<$Res>
    implements _$GetSelectionDayDataRequestCopyWith<$Res> {
  __$GetSelectionDayDataRequestCopyWithImpl(this._self, this._then);

  final _GetSelectionDayDataRequest _self;
  final $Res Function(_GetSelectionDayDataRequest) _then;

/// Create a copy of GetSelectionDayDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? stationsId = null,}) {
  return _then(_GetSelectionDayDataRequest(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,stationsId: null == stationsId ? _self.stationsId : stationsId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
