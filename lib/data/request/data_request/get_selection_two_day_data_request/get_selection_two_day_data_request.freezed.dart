// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_selection_two_day_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSelectionTwoDayDataRequest {

 String get stationId; String get firstDay; String get secondDay;
/// Create a copy of GetSelectionTwoDayDataRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSelectionTwoDayDataRequestCopyWith<GetSelectionTwoDayDataRequest> get copyWith => _$GetSelectionTwoDayDataRequestCopyWithImpl<GetSelectionTwoDayDataRequest>(this as GetSelectionTwoDayDataRequest, _$identity);

  /// Serializes this GetSelectionTwoDayDataRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSelectionTwoDayDataRequest&&(identical(other.stationId, stationId) || other.stationId == stationId)&&(identical(other.firstDay, firstDay) || other.firstDay == firstDay)&&(identical(other.secondDay, secondDay) || other.secondDay == secondDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stationId,firstDay,secondDay);

@override
String toString() {
  return 'GetSelectionTwoDayDataRequest(stationId: $stationId, firstDay: $firstDay, secondDay: $secondDay)';
}


}

/// @nodoc
abstract mixin class $GetSelectionTwoDayDataRequestCopyWith<$Res>  {
  factory $GetSelectionTwoDayDataRequestCopyWith(GetSelectionTwoDayDataRequest value, $Res Function(GetSelectionTwoDayDataRequest) _then) = _$GetSelectionTwoDayDataRequestCopyWithImpl;
@useResult
$Res call({
 String stationId, String firstDay, String secondDay
});




}
/// @nodoc
class _$GetSelectionTwoDayDataRequestCopyWithImpl<$Res>
    implements $GetSelectionTwoDayDataRequestCopyWith<$Res> {
  _$GetSelectionTwoDayDataRequestCopyWithImpl(this._self, this._then);

  final GetSelectionTwoDayDataRequest _self;
  final $Res Function(GetSelectionTwoDayDataRequest) _then;

/// Create a copy of GetSelectionTwoDayDataRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stationId = null,Object? firstDay = null,Object? secondDay = null,}) {
  return _then(_self.copyWith(
stationId: null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as String,firstDay: null == firstDay ? _self.firstDay : firstDay // ignore: cast_nullable_to_non_nullable
as String,secondDay: null == secondDay ? _self.secondDay : secondDay // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetSelectionTwoDayDataRequest].
extension GetSelectionTwoDayDataRequestPatterns on GetSelectionTwoDayDataRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetSelectionTwoDayDataRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSelectionTwoDayDataRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetSelectionTwoDayDataRequest value)  $default,){
final _that = this;
switch (_that) {
case _GetSelectionTwoDayDataRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetSelectionTwoDayDataRequest value)?  $default,){
final _that = this;
switch (_that) {
case _GetSelectionTwoDayDataRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String stationId,  String firstDay,  String secondDay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSelectionTwoDayDataRequest() when $default != null:
return $default(_that.stationId,_that.firstDay,_that.secondDay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String stationId,  String firstDay,  String secondDay)  $default,) {final _that = this;
switch (_that) {
case _GetSelectionTwoDayDataRequest():
return $default(_that.stationId,_that.firstDay,_that.secondDay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String stationId,  String firstDay,  String secondDay)?  $default,) {final _that = this;
switch (_that) {
case _GetSelectionTwoDayDataRequest() when $default != null:
return $default(_that.stationId,_that.firstDay,_that.secondDay);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetSelectionTwoDayDataRequest implements GetSelectionTwoDayDataRequest {
   _GetSelectionTwoDayDataRequest({required this.stationId, required this.firstDay, required this.secondDay});
  factory _GetSelectionTwoDayDataRequest.fromJson(Map<String, dynamic> json) => _$GetSelectionTwoDayDataRequestFromJson(json);

@override final  String stationId;
@override final  String firstDay;
@override final  String secondDay;

/// Create a copy of GetSelectionTwoDayDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSelectionTwoDayDataRequestCopyWith<_GetSelectionTwoDayDataRequest> get copyWith => __$GetSelectionTwoDayDataRequestCopyWithImpl<_GetSelectionTwoDayDataRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetSelectionTwoDayDataRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSelectionTwoDayDataRequest&&(identical(other.stationId, stationId) || other.stationId == stationId)&&(identical(other.firstDay, firstDay) || other.firstDay == firstDay)&&(identical(other.secondDay, secondDay) || other.secondDay == secondDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stationId,firstDay,secondDay);

@override
String toString() {
  return 'GetSelectionTwoDayDataRequest(stationId: $stationId, firstDay: $firstDay, secondDay: $secondDay)';
}


}

/// @nodoc
abstract mixin class _$GetSelectionTwoDayDataRequestCopyWith<$Res> implements $GetSelectionTwoDayDataRequestCopyWith<$Res> {
  factory _$GetSelectionTwoDayDataRequestCopyWith(_GetSelectionTwoDayDataRequest value, $Res Function(_GetSelectionTwoDayDataRequest) _then) = __$GetSelectionTwoDayDataRequestCopyWithImpl;
@override @useResult
$Res call({
 String stationId, String firstDay, String secondDay
});




}
/// @nodoc
class __$GetSelectionTwoDayDataRequestCopyWithImpl<$Res>
    implements _$GetSelectionTwoDayDataRequestCopyWith<$Res> {
  __$GetSelectionTwoDayDataRequestCopyWithImpl(this._self, this._then);

  final _GetSelectionTwoDayDataRequest _self;
  final $Res Function(_GetSelectionTwoDayDataRequest) _then;

/// Create a copy of GetSelectionTwoDayDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stationId = null,Object? firstDay = null,Object? secondDay = null,}) {
  return _then(_GetSelectionTwoDayDataRequest(
stationId: null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as String,firstDay: null == firstDay ? _self.firstDay : firstDay // ignore: cast_nullable_to_non_nullable
as String,secondDay: null == secondDay ? _self.secondDay : secondDay // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
