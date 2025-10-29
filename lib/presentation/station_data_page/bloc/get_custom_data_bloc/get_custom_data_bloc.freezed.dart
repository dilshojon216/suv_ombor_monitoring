// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_custom_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetCustomDataEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCustomDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetCustomDataEvent()';
}


}

/// @nodoc
class $GetCustomDataEventCopyWith<$Res>  {
$GetCustomDataEventCopyWith(GetCustomDataEvent _, $Res Function(GetCustomDataEvent) __);
}


/// Adds pattern-matching-related methods to [GetCustomDataEvent].
extension GetCustomDataEventPatterns on GetCustomDataEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadDataOneEvent value)?  loadDataOneEvent,TResult Function( _LoadDataTwoEvent value)?  loadDataTwoEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadDataOneEvent() when loadDataOneEvent != null:
return loadDataOneEvent(_that);case _LoadDataTwoEvent() when loadDataTwoEvent != null:
return loadDataTwoEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadDataOneEvent value)  loadDataOneEvent,required TResult Function( _LoadDataTwoEvent value)  loadDataTwoEvent,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadDataOneEvent():
return loadDataOneEvent(_that);case _LoadDataTwoEvent():
return loadDataTwoEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadDataOneEvent value)?  loadDataOneEvent,TResult? Function( _LoadDataTwoEvent value)?  loadDataTwoEvent,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadDataOneEvent() when loadDataOneEvent != null:
return loadDataOneEvent(_that);case _LoadDataTwoEvent() when loadDataTwoEvent != null:
return loadDataTwoEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String stationId,  String day)?  loadDataOneEvent,TResult Function( String stationId,  String startDay,  String endDay)?  loadDataTwoEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadDataOneEvent() when loadDataOneEvent != null:
return loadDataOneEvent(_that.stationId,_that.day);case _LoadDataTwoEvent() when loadDataTwoEvent != null:
return loadDataTwoEvent(_that.stationId,_that.startDay,_that.endDay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String stationId,  String day)  loadDataOneEvent,required TResult Function( String stationId,  String startDay,  String endDay)  loadDataTwoEvent,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadDataOneEvent():
return loadDataOneEvent(_that.stationId,_that.day);case _LoadDataTwoEvent():
return loadDataTwoEvent(_that.stationId,_that.startDay,_that.endDay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String stationId,  String day)?  loadDataOneEvent,TResult? Function( String stationId,  String startDay,  String endDay)?  loadDataTwoEvent,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadDataOneEvent() when loadDataOneEvent != null:
return loadDataOneEvent(_that.stationId,_that.day);case _LoadDataTwoEvent() when loadDataTwoEvent != null:
return loadDataTwoEvent(_that.stationId,_that.startDay,_that.endDay);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements GetCustomDataEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetCustomDataEvent.started()';
}


}




/// @nodoc


class _LoadDataOneEvent implements GetCustomDataEvent {
  const _LoadDataOneEvent(this.stationId, this.day);
  

 final  String stationId;
 final  String day;

/// Create a copy of GetCustomDataEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadDataOneEventCopyWith<_LoadDataOneEvent> get copyWith => __$LoadDataOneEventCopyWithImpl<_LoadDataOneEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadDataOneEvent&&(identical(other.stationId, stationId) || other.stationId == stationId)&&(identical(other.day, day) || other.day == day));
}


@override
int get hashCode => Object.hash(runtimeType,stationId,day);

@override
String toString() {
  return 'GetCustomDataEvent.loadDataOneEvent(stationId: $stationId, day: $day)';
}


}

/// @nodoc
abstract mixin class _$LoadDataOneEventCopyWith<$Res> implements $GetCustomDataEventCopyWith<$Res> {
  factory _$LoadDataOneEventCopyWith(_LoadDataOneEvent value, $Res Function(_LoadDataOneEvent) _then) = __$LoadDataOneEventCopyWithImpl;
@useResult
$Res call({
 String stationId, String day
});




}
/// @nodoc
class __$LoadDataOneEventCopyWithImpl<$Res>
    implements _$LoadDataOneEventCopyWith<$Res> {
  __$LoadDataOneEventCopyWithImpl(this._self, this._then);

  final _LoadDataOneEvent _self;
  final $Res Function(_LoadDataOneEvent) _then;

/// Create a copy of GetCustomDataEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stationId = null,Object? day = null,}) {
  return _then(_LoadDataOneEvent(
null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as String,null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadDataTwoEvent implements GetCustomDataEvent {
  const _LoadDataTwoEvent(this.stationId, this.startDay, this.endDay);
  

 final  String stationId;
 final  String startDay;
 final  String endDay;

/// Create a copy of GetCustomDataEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadDataTwoEventCopyWith<_LoadDataTwoEvent> get copyWith => __$LoadDataTwoEventCopyWithImpl<_LoadDataTwoEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadDataTwoEvent&&(identical(other.stationId, stationId) || other.stationId == stationId)&&(identical(other.startDay, startDay) || other.startDay == startDay)&&(identical(other.endDay, endDay) || other.endDay == endDay));
}


@override
int get hashCode => Object.hash(runtimeType,stationId,startDay,endDay);

@override
String toString() {
  return 'GetCustomDataEvent.loadDataTwoEvent(stationId: $stationId, startDay: $startDay, endDay: $endDay)';
}


}

/// @nodoc
abstract mixin class _$LoadDataTwoEventCopyWith<$Res> implements $GetCustomDataEventCopyWith<$Res> {
  factory _$LoadDataTwoEventCopyWith(_LoadDataTwoEvent value, $Res Function(_LoadDataTwoEvent) _then) = __$LoadDataTwoEventCopyWithImpl;
@useResult
$Res call({
 String stationId, String startDay, String endDay
});




}
/// @nodoc
class __$LoadDataTwoEventCopyWithImpl<$Res>
    implements _$LoadDataTwoEventCopyWith<$Res> {
  __$LoadDataTwoEventCopyWithImpl(this._self, this._then);

  final _LoadDataTwoEvent _self;
  final $Res Function(_LoadDataTwoEvent) _then;

/// Create a copy of GetCustomDataEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stationId = null,Object? startDay = null,Object? endDay = null,}) {
  return _then(_LoadDataTwoEvent(
null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as String,null == startDay ? _self.startDay : startDay // ignore: cast_nullable_to_non_nullable
as String,null == endDay ? _self.endDay : endDay // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GetCustomDataState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCustomDataState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetCustomDataState()';
}


}

/// @nodoc
class $GetCustomDataStateCopyWith<$Res>  {
$GetCustomDataStateCopyWith(GetCustomDataState _, $Res Function(GetCustomDataState) __);
}


/// Adds pattern-matching-related methods to [GetCustomDataState].
extension GetCustomDataStatePatterns on GetCustomDataState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _LoadedSelectedDay value)?  loadedSelectedDay,TResult Function( _LoadedDateRange value)?  loadedDateRange,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _LoadedSelectedDay() when loadedSelectedDay != null:
return loadedSelectedDay(_that);case _LoadedDateRange() when loadedDateRange != null:
return loadedDateRange(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _LoadedSelectedDay value)  loadedSelectedDay,required TResult Function( _LoadedDateRange value)  loadedDateRange,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _LoadedSelectedDay():
return loadedSelectedDay(_that);case _LoadedDateRange():
return loadedDateRange(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _LoadedSelectedDay value)?  loadedSelectedDay,TResult? Function( _LoadedDateRange value)?  loadedDateRange,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _LoadedSelectedDay() when loadedSelectedDay != null:
return loadedSelectedDay(_that);case _LoadedDateRange() when loadedDateRange != null:
return loadedDateRange(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<HourlyData> data)?  loadedSelectedDay,TResult Function( List<HourlyData> data)?  loadedDateRange,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _LoadedSelectedDay() when loadedSelectedDay != null:
return loadedSelectedDay(_that.data);case _LoadedDateRange() when loadedDateRange != null:
return loadedDateRange(_that.data);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<HourlyData> data)  loadedSelectedDay,required TResult Function( List<HourlyData> data)  loadedDateRange,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _LoadedSelectedDay():
return loadedSelectedDay(_that.data);case _LoadedDateRange():
return loadedDateRange(_that.data);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<HourlyData> data)?  loadedSelectedDay,TResult? Function( List<HourlyData> data)?  loadedDateRange,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _LoadedSelectedDay() when loadedSelectedDay != null:
return loadedSelectedDay(_that.data);case _LoadedDateRange() when loadedDateRange != null:
return loadedDateRange(_that.data);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GetCustomDataState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetCustomDataState.initial()';
}


}




/// @nodoc


class _Loading implements GetCustomDataState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetCustomDataState.loading()';
}


}




/// @nodoc


class _LoadedSelectedDay implements GetCustomDataState {
  const _LoadedSelectedDay({required final  List<HourlyData> data}): _data = data;
  

 final  List<HourlyData> _data;
 List<HourlyData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of GetCustomDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedSelectedDayCopyWith<_LoadedSelectedDay> get copyWith => __$LoadedSelectedDayCopyWithImpl<_LoadedSelectedDay>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedSelectedDay&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetCustomDataState.loadedSelectedDay(data: $data)';
}


}

/// @nodoc
abstract mixin class _$LoadedSelectedDayCopyWith<$Res> implements $GetCustomDataStateCopyWith<$Res> {
  factory _$LoadedSelectedDayCopyWith(_LoadedSelectedDay value, $Res Function(_LoadedSelectedDay) _then) = __$LoadedSelectedDayCopyWithImpl;
@useResult
$Res call({
 List<HourlyData> data
});




}
/// @nodoc
class __$LoadedSelectedDayCopyWithImpl<$Res>
    implements _$LoadedSelectedDayCopyWith<$Res> {
  __$LoadedSelectedDayCopyWithImpl(this._self, this._then);

  final _LoadedSelectedDay _self;
  final $Res Function(_LoadedSelectedDay) _then;

/// Create a copy of GetCustomDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_LoadedSelectedDay(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<HourlyData>,
  ));
}


}

/// @nodoc


class _LoadedDateRange implements GetCustomDataState {
  const _LoadedDateRange({required final  List<HourlyData> data}): _data = data;
  

 final  List<HourlyData> _data;
 List<HourlyData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of GetCustomDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedDateRangeCopyWith<_LoadedDateRange> get copyWith => __$LoadedDateRangeCopyWithImpl<_LoadedDateRange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedDateRange&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetCustomDataState.loadedDateRange(data: $data)';
}


}

/// @nodoc
abstract mixin class _$LoadedDateRangeCopyWith<$Res> implements $GetCustomDataStateCopyWith<$Res> {
  factory _$LoadedDateRangeCopyWith(_LoadedDateRange value, $Res Function(_LoadedDateRange) _then) = __$LoadedDateRangeCopyWithImpl;
@useResult
$Res call({
 List<HourlyData> data
});




}
/// @nodoc
class __$LoadedDateRangeCopyWithImpl<$Res>
    implements _$LoadedDateRangeCopyWith<$Res> {
  __$LoadedDateRangeCopyWithImpl(this._self, this._then);

  final _LoadedDateRange _self;
  final $Res Function(_LoadedDateRange) _then;

/// Create a copy of GetCustomDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_LoadedDateRange(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<HourlyData>,
  ));
}


}

/// @nodoc


class _Error implements GetCustomDataState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of GetCustomDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetCustomDataState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $GetCustomDataStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of GetCustomDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
