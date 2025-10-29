// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_statistic_stations_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetStatisticStationsResponse {

 int get statusCode; String get message; GetStatisticData get data;
/// Create a copy of GetStatisticStationsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetStatisticStationsResponseCopyWith<GetStatisticStationsResponse> get copyWith => _$GetStatisticStationsResponseCopyWithImpl<GetStatisticStationsResponse>(this as GetStatisticStationsResponse, _$identity);

  /// Serializes this GetStatisticStationsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStatisticStationsResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,message,data);

@override
String toString() {
  return 'GetStatisticStationsResponse(statusCode: $statusCode, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetStatisticStationsResponseCopyWith<$Res>  {
  factory $GetStatisticStationsResponseCopyWith(GetStatisticStationsResponse value, $Res Function(GetStatisticStationsResponse) _then) = _$GetStatisticStationsResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, String message, GetStatisticData data
});


$GetStatisticDataCopyWith<$Res> get data;

}
/// @nodoc
class _$GetStatisticStationsResponseCopyWithImpl<$Res>
    implements $GetStatisticStationsResponseCopyWith<$Res> {
  _$GetStatisticStationsResponseCopyWithImpl(this._self, this._then);

  final GetStatisticStationsResponse _self;
  final $Res Function(GetStatisticStationsResponse) _then;

/// Create a copy of GetStatisticStationsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetStatisticData,
  ));
}
/// Create a copy of GetStatisticStationsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetStatisticDataCopyWith<$Res> get data {
  
  return $GetStatisticDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetStatisticStationsResponse].
extension GetStatisticStationsResponsePatterns on GetStatisticStationsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetStatisticStationsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetStatisticStationsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetStatisticStationsResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetStatisticStationsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetStatisticStationsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetStatisticStationsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int statusCode,  String message,  GetStatisticData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetStatisticStationsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int statusCode,  String message,  GetStatisticData data)  $default,) {final _that = this;
switch (_that) {
case _GetStatisticStationsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int statusCode,  String message,  GetStatisticData data)?  $default,) {final _that = this;
switch (_that) {
case _GetStatisticStationsResponse() when $default != null:
return $default(_that.statusCode,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetStatisticStationsResponse implements GetStatisticStationsResponse {
   _GetStatisticStationsResponse({required this.statusCode, required this.message, required this.data});
  factory _GetStatisticStationsResponse.fromJson(Map<String, dynamic> json) => _$GetStatisticStationsResponseFromJson(json);

@override final  int statusCode;
@override final  String message;
@override final  GetStatisticData data;

/// Create a copy of GetStatisticStationsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetStatisticStationsResponseCopyWith<_GetStatisticStationsResponse> get copyWith => __$GetStatisticStationsResponseCopyWithImpl<_GetStatisticStationsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetStatisticStationsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetStatisticStationsResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,message,data);

@override
String toString() {
  return 'GetStatisticStationsResponse(statusCode: $statusCode, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetStatisticStationsResponseCopyWith<$Res> implements $GetStatisticStationsResponseCopyWith<$Res> {
  factory _$GetStatisticStationsResponseCopyWith(_GetStatisticStationsResponse value, $Res Function(_GetStatisticStationsResponse) _then) = __$GetStatisticStationsResponseCopyWithImpl;
@override @useResult
$Res call({
 int statusCode, String message, GetStatisticData data
});


@override $GetStatisticDataCopyWith<$Res> get data;

}
/// @nodoc
class __$GetStatisticStationsResponseCopyWithImpl<$Res>
    implements _$GetStatisticStationsResponseCopyWith<$Res> {
  __$GetStatisticStationsResponseCopyWithImpl(this._self, this._then);

  final _GetStatisticStationsResponse _self;
  final $Res Function(_GetStatisticStationsResponse) _then;

/// Create a copy of GetStatisticStationsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? message = null,Object? data = null,}) {
  return _then(_GetStatisticStationsResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetStatisticData,
  ));
}

/// Create a copy of GetStatisticStationsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetStatisticDataCopyWith<$Res> get data {
  
  return $GetStatisticDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$GetStatisticData {

 int get totalStationsCount; int get totalStationsWorking; int get totalStationsNotWorking; int get totalStationsDefective; int get totalTodayWorkStationsCount; int get totalThreeDayWorkStationsCount; int get totalMonthWorkStationsCount; int get totalMoreWorkStationsCount; int get totalNotDataStationsCount; int? get totalStationsFutureCount;
/// Create a copy of GetStatisticData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetStatisticDataCopyWith<GetStatisticData> get copyWith => _$GetStatisticDataCopyWithImpl<GetStatisticData>(this as GetStatisticData, _$identity);

  /// Serializes this GetStatisticData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStatisticData&&(identical(other.totalStationsCount, totalStationsCount) || other.totalStationsCount == totalStationsCount)&&(identical(other.totalStationsWorking, totalStationsWorking) || other.totalStationsWorking == totalStationsWorking)&&(identical(other.totalStationsNotWorking, totalStationsNotWorking) || other.totalStationsNotWorking == totalStationsNotWorking)&&(identical(other.totalStationsDefective, totalStationsDefective) || other.totalStationsDefective == totalStationsDefective)&&(identical(other.totalTodayWorkStationsCount, totalTodayWorkStationsCount) || other.totalTodayWorkStationsCount == totalTodayWorkStationsCount)&&(identical(other.totalThreeDayWorkStationsCount, totalThreeDayWorkStationsCount) || other.totalThreeDayWorkStationsCount == totalThreeDayWorkStationsCount)&&(identical(other.totalMonthWorkStationsCount, totalMonthWorkStationsCount) || other.totalMonthWorkStationsCount == totalMonthWorkStationsCount)&&(identical(other.totalMoreWorkStationsCount, totalMoreWorkStationsCount) || other.totalMoreWorkStationsCount == totalMoreWorkStationsCount)&&(identical(other.totalNotDataStationsCount, totalNotDataStationsCount) || other.totalNotDataStationsCount == totalNotDataStationsCount)&&(identical(other.totalStationsFutureCount, totalStationsFutureCount) || other.totalStationsFutureCount == totalStationsFutureCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalStationsCount,totalStationsWorking,totalStationsNotWorking,totalStationsDefective,totalTodayWorkStationsCount,totalThreeDayWorkStationsCount,totalMonthWorkStationsCount,totalMoreWorkStationsCount,totalNotDataStationsCount,totalStationsFutureCount);

@override
String toString() {
  return 'GetStatisticData(totalStationsCount: $totalStationsCount, totalStationsWorking: $totalStationsWorking, totalStationsNotWorking: $totalStationsNotWorking, totalStationsDefective: $totalStationsDefective, totalTodayWorkStationsCount: $totalTodayWorkStationsCount, totalThreeDayWorkStationsCount: $totalThreeDayWorkStationsCount, totalMonthWorkStationsCount: $totalMonthWorkStationsCount, totalMoreWorkStationsCount: $totalMoreWorkStationsCount, totalNotDataStationsCount: $totalNotDataStationsCount, totalStationsFutureCount: $totalStationsFutureCount)';
}


}

/// @nodoc
abstract mixin class $GetStatisticDataCopyWith<$Res>  {
  factory $GetStatisticDataCopyWith(GetStatisticData value, $Res Function(GetStatisticData) _then) = _$GetStatisticDataCopyWithImpl;
@useResult
$Res call({
 int totalStationsCount, int totalStationsWorking, int totalStationsNotWorking, int totalStationsDefective, int totalTodayWorkStationsCount, int totalThreeDayWorkStationsCount, int totalMonthWorkStationsCount, int totalMoreWorkStationsCount, int totalNotDataStationsCount, int? totalStationsFutureCount
});




}
/// @nodoc
class _$GetStatisticDataCopyWithImpl<$Res>
    implements $GetStatisticDataCopyWith<$Res> {
  _$GetStatisticDataCopyWithImpl(this._self, this._then);

  final GetStatisticData _self;
  final $Res Function(GetStatisticData) _then;

/// Create a copy of GetStatisticData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalStationsCount = null,Object? totalStationsWorking = null,Object? totalStationsNotWorking = null,Object? totalStationsDefective = null,Object? totalTodayWorkStationsCount = null,Object? totalThreeDayWorkStationsCount = null,Object? totalMonthWorkStationsCount = null,Object? totalMoreWorkStationsCount = null,Object? totalNotDataStationsCount = null,Object? totalStationsFutureCount = freezed,}) {
  return _then(_self.copyWith(
totalStationsCount: null == totalStationsCount ? _self.totalStationsCount : totalStationsCount // ignore: cast_nullable_to_non_nullable
as int,totalStationsWorking: null == totalStationsWorking ? _self.totalStationsWorking : totalStationsWorking // ignore: cast_nullable_to_non_nullable
as int,totalStationsNotWorking: null == totalStationsNotWorking ? _self.totalStationsNotWorking : totalStationsNotWorking // ignore: cast_nullable_to_non_nullable
as int,totalStationsDefective: null == totalStationsDefective ? _self.totalStationsDefective : totalStationsDefective // ignore: cast_nullable_to_non_nullable
as int,totalTodayWorkStationsCount: null == totalTodayWorkStationsCount ? _self.totalTodayWorkStationsCount : totalTodayWorkStationsCount // ignore: cast_nullable_to_non_nullable
as int,totalThreeDayWorkStationsCount: null == totalThreeDayWorkStationsCount ? _self.totalThreeDayWorkStationsCount : totalThreeDayWorkStationsCount // ignore: cast_nullable_to_non_nullable
as int,totalMonthWorkStationsCount: null == totalMonthWorkStationsCount ? _self.totalMonthWorkStationsCount : totalMonthWorkStationsCount // ignore: cast_nullable_to_non_nullable
as int,totalMoreWorkStationsCount: null == totalMoreWorkStationsCount ? _self.totalMoreWorkStationsCount : totalMoreWorkStationsCount // ignore: cast_nullable_to_non_nullable
as int,totalNotDataStationsCount: null == totalNotDataStationsCount ? _self.totalNotDataStationsCount : totalNotDataStationsCount // ignore: cast_nullable_to_non_nullable
as int,totalStationsFutureCount: freezed == totalStationsFutureCount ? _self.totalStationsFutureCount : totalStationsFutureCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetStatisticData].
extension GetStatisticDataPatterns on GetStatisticData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetStatisticData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetStatisticData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetStatisticData value)  $default,){
final _that = this;
switch (_that) {
case _GetStatisticData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetStatisticData value)?  $default,){
final _that = this;
switch (_that) {
case _GetStatisticData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalStationsCount,  int totalStationsWorking,  int totalStationsNotWorking,  int totalStationsDefective,  int totalTodayWorkStationsCount,  int totalThreeDayWorkStationsCount,  int totalMonthWorkStationsCount,  int totalMoreWorkStationsCount,  int totalNotDataStationsCount,  int? totalStationsFutureCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetStatisticData() when $default != null:
return $default(_that.totalStationsCount,_that.totalStationsWorking,_that.totalStationsNotWorking,_that.totalStationsDefective,_that.totalTodayWorkStationsCount,_that.totalThreeDayWorkStationsCount,_that.totalMonthWorkStationsCount,_that.totalMoreWorkStationsCount,_that.totalNotDataStationsCount,_that.totalStationsFutureCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalStationsCount,  int totalStationsWorking,  int totalStationsNotWorking,  int totalStationsDefective,  int totalTodayWorkStationsCount,  int totalThreeDayWorkStationsCount,  int totalMonthWorkStationsCount,  int totalMoreWorkStationsCount,  int totalNotDataStationsCount,  int? totalStationsFutureCount)  $default,) {final _that = this;
switch (_that) {
case _GetStatisticData():
return $default(_that.totalStationsCount,_that.totalStationsWorking,_that.totalStationsNotWorking,_that.totalStationsDefective,_that.totalTodayWorkStationsCount,_that.totalThreeDayWorkStationsCount,_that.totalMonthWorkStationsCount,_that.totalMoreWorkStationsCount,_that.totalNotDataStationsCount,_that.totalStationsFutureCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalStationsCount,  int totalStationsWorking,  int totalStationsNotWorking,  int totalStationsDefective,  int totalTodayWorkStationsCount,  int totalThreeDayWorkStationsCount,  int totalMonthWorkStationsCount,  int totalMoreWorkStationsCount,  int totalNotDataStationsCount,  int? totalStationsFutureCount)?  $default,) {final _that = this;
switch (_that) {
case _GetStatisticData() when $default != null:
return $default(_that.totalStationsCount,_that.totalStationsWorking,_that.totalStationsNotWorking,_that.totalStationsDefective,_that.totalTodayWorkStationsCount,_that.totalThreeDayWorkStationsCount,_that.totalMonthWorkStationsCount,_that.totalMoreWorkStationsCount,_that.totalNotDataStationsCount,_that.totalStationsFutureCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetStatisticData implements GetStatisticData {
   _GetStatisticData({required this.totalStationsCount, required this.totalStationsWorking, required this.totalStationsNotWorking, required this.totalStationsDefective, required this.totalTodayWorkStationsCount, required this.totalThreeDayWorkStationsCount, required this.totalMonthWorkStationsCount, required this.totalMoreWorkStationsCount, required this.totalNotDataStationsCount, required this.totalStationsFutureCount});
  factory _GetStatisticData.fromJson(Map<String, dynamic> json) => _$GetStatisticDataFromJson(json);

@override final  int totalStationsCount;
@override final  int totalStationsWorking;
@override final  int totalStationsNotWorking;
@override final  int totalStationsDefective;
@override final  int totalTodayWorkStationsCount;
@override final  int totalThreeDayWorkStationsCount;
@override final  int totalMonthWorkStationsCount;
@override final  int totalMoreWorkStationsCount;
@override final  int totalNotDataStationsCount;
@override final  int? totalStationsFutureCount;

/// Create a copy of GetStatisticData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetStatisticDataCopyWith<_GetStatisticData> get copyWith => __$GetStatisticDataCopyWithImpl<_GetStatisticData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetStatisticDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetStatisticData&&(identical(other.totalStationsCount, totalStationsCount) || other.totalStationsCount == totalStationsCount)&&(identical(other.totalStationsWorking, totalStationsWorking) || other.totalStationsWorking == totalStationsWorking)&&(identical(other.totalStationsNotWorking, totalStationsNotWorking) || other.totalStationsNotWorking == totalStationsNotWorking)&&(identical(other.totalStationsDefective, totalStationsDefective) || other.totalStationsDefective == totalStationsDefective)&&(identical(other.totalTodayWorkStationsCount, totalTodayWorkStationsCount) || other.totalTodayWorkStationsCount == totalTodayWorkStationsCount)&&(identical(other.totalThreeDayWorkStationsCount, totalThreeDayWorkStationsCount) || other.totalThreeDayWorkStationsCount == totalThreeDayWorkStationsCount)&&(identical(other.totalMonthWorkStationsCount, totalMonthWorkStationsCount) || other.totalMonthWorkStationsCount == totalMonthWorkStationsCount)&&(identical(other.totalMoreWorkStationsCount, totalMoreWorkStationsCount) || other.totalMoreWorkStationsCount == totalMoreWorkStationsCount)&&(identical(other.totalNotDataStationsCount, totalNotDataStationsCount) || other.totalNotDataStationsCount == totalNotDataStationsCount)&&(identical(other.totalStationsFutureCount, totalStationsFutureCount) || other.totalStationsFutureCount == totalStationsFutureCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalStationsCount,totalStationsWorking,totalStationsNotWorking,totalStationsDefective,totalTodayWorkStationsCount,totalThreeDayWorkStationsCount,totalMonthWorkStationsCount,totalMoreWorkStationsCount,totalNotDataStationsCount,totalStationsFutureCount);

@override
String toString() {
  return 'GetStatisticData(totalStationsCount: $totalStationsCount, totalStationsWorking: $totalStationsWorking, totalStationsNotWorking: $totalStationsNotWorking, totalStationsDefective: $totalStationsDefective, totalTodayWorkStationsCount: $totalTodayWorkStationsCount, totalThreeDayWorkStationsCount: $totalThreeDayWorkStationsCount, totalMonthWorkStationsCount: $totalMonthWorkStationsCount, totalMoreWorkStationsCount: $totalMoreWorkStationsCount, totalNotDataStationsCount: $totalNotDataStationsCount, totalStationsFutureCount: $totalStationsFutureCount)';
}


}

/// @nodoc
abstract mixin class _$GetStatisticDataCopyWith<$Res> implements $GetStatisticDataCopyWith<$Res> {
  factory _$GetStatisticDataCopyWith(_GetStatisticData value, $Res Function(_GetStatisticData) _then) = __$GetStatisticDataCopyWithImpl;
@override @useResult
$Res call({
 int totalStationsCount, int totalStationsWorking, int totalStationsNotWorking, int totalStationsDefective, int totalTodayWorkStationsCount, int totalThreeDayWorkStationsCount, int totalMonthWorkStationsCount, int totalMoreWorkStationsCount, int totalNotDataStationsCount, int? totalStationsFutureCount
});




}
/// @nodoc
class __$GetStatisticDataCopyWithImpl<$Res>
    implements _$GetStatisticDataCopyWith<$Res> {
  __$GetStatisticDataCopyWithImpl(this._self, this._then);

  final _GetStatisticData _self;
  final $Res Function(_GetStatisticData) _then;

/// Create a copy of GetStatisticData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalStationsCount = null,Object? totalStationsWorking = null,Object? totalStationsNotWorking = null,Object? totalStationsDefective = null,Object? totalTodayWorkStationsCount = null,Object? totalThreeDayWorkStationsCount = null,Object? totalMonthWorkStationsCount = null,Object? totalMoreWorkStationsCount = null,Object? totalNotDataStationsCount = null,Object? totalStationsFutureCount = freezed,}) {
  return _then(_GetStatisticData(
totalStationsCount: null == totalStationsCount ? _self.totalStationsCount : totalStationsCount // ignore: cast_nullable_to_non_nullable
as int,totalStationsWorking: null == totalStationsWorking ? _self.totalStationsWorking : totalStationsWorking // ignore: cast_nullable_to_non_nullable
as int,totalStationsNotWorking: null == totalStationsNotWorking ? _self.totalStationsNotWorking : totalStationsNotWorking // ignore: cast_nullable_to_non_nullable
as int,totalStationsDefective: null == totalStationsDefective ? _self.totalStationsDefective : totalStationsDefective // ignore: cast_nullable_to_non_nullable
as int,totalTodayWorkStationsCount: null == totalTodayWorkStationsCount ? _self.totalTodayWorkStationsCount : totalTodayWorkStationsCount // ignore: cast_nullable_to_non_nullable
as int,totalThreeDayWorkStationsCount: null == totalThreeDayWorkStationsCount ? _self.totalThreeDayWorkStationsCount : totalThreeDayWorkStationsCount // ignore: cast_nullable_to_non_nullable
as int,totalMonthWorkStationsCount: null == totalMonthWorkStationsCount ? _self.totalMonthWorkStationsCount : totalMonthWorkStationsCount // ignore: cast_nullable_to_non_nullable
as int,totalMoreWorkStationsCount: null == totalMoreWorkStationsCount ? _self.totalMoreWorkStationsCount : totalMoreWorkStationsCount // ignore: cast_nullable_to_non_nullable
as int,totalNotDataStationsCount: null == totalNotDataStationsCount ? _self.totalNotDataStationsCount : totalNotDataStationsCount // ignore: cast_nullable_to_non_nullable
as int,totalStationsFutureCount: freezed == totalStationsFutureCount ? _self.totalStationsFutureCount : totalStationsFutureCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
