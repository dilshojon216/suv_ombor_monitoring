// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LastData {

 String get id; String get name; String get imel; int get region_id; int get district_id; int get balance_organization_id; String get userPhoneNum; String get devicePhoneNum; String get location; String get sendDataTime; String get sendInfoTime; String get programVersion; num get temperture; num get battery; num get signal; DateTime get date; int get status; bool get defective; bool get isIntegration; String? get sensorTypeId; String? get userId; DateTime? get integrationDate; DateTime get createdAt; DateTime get updatedAt; DataForLastData? get lastData;
/// Create a copy of LastData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastDataCopyWith<LastData> get copyWith => _$LastDataCopyWithImpl<LastData>(this as LastData, _$identity);

  /// Serializes this LastData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imel, imel) || other.imel == imel)&&(identical(other.region_id, region_id) || other.region_id == region_id)&&(identical(other.district_id, district_id) || other.district_id == district_id)&&(identical(other.balance_organization_id, balance_organization_id) || other.balance_organization_id == balance_organization_id)&&(identical(other.userPhoneNum, userPhoneNum) || other.userPhoneNum == userPhoneNum)&&(identical(other.devicePhoneNum, devicePhoneNum) || other.devicePhoneNum == devicePhoneNum)&&(identical(other.location, location) || other.location == location)&&(identical(other.sendDataTime, sendDataTime) || other.sendDataTime == sendDataTime)&&(identical(other.sendInfoTime, sendInfoTime) || other.sendInfoTime == sendInfoTime)&&(identical(other.programVersion, programVersion) || other.programVersion == programVersion)&&(identical(other.temperture, temperture) || other.temperture == temperture)&&(identical(other.battery, battery) || other.battery == battery)&&(identical(other.signal, signal) || other.signal == signal)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.defective, defective) || other.defective == defective)&&(identical(other.isIntegration, isIntegration) || other.isIntegration == isIntegration)&&(identical(other.sensorTypeId, sensorTypeId) || other.sensorTypeId == sensorTypeId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.integrationDate, integrationDate) || other.integrationDate == integrationDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.lastData, lastData) || other.lastData == lastData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,imel,region_id,district_id,balance_organization_id,userPhoneNum,devicePhoneNum,location,sendDataTime,sendInfoTime,programVersion,temperture,battery,signal,date,status,defective,isIntegration,sensorTypeId,userId,integrationDate,createdAt,updatedAt,lastData]);

@override
String toString() {
  return 'LastData(id: $id, name: $name, imel: $imel, region_id: $region_id, district_id: $district_id, balance_organization_id: $balance_organization_id, userPhoneNum: $userPhoneNum, devicePhoneNum: $devicePhoneNum, location: $location, sendDataTime: $sendDataTime, sendInfoTime: $sendInfoTime, programVersion: $programVersion, temperture: $temperture, battery: $battery, signal: $signal, date: $date, status: $status, defective: $defective, isIntegration: $isIntegration, sensorTypeId: $sensorTypeId, userId: $userId, integrationDate: $integrationDate, createdAt: $createdAt, updatedAt: $updatedAt, lastData: $lastData)';
}


}

/// @nodoc
abstract mixin class $LastDataCopyWith<$Res>  {
  factory $LastDataCopyWith(LastData value, $Res Function(LastData) _then) = _$LastDataCopyWithImpl;
@useResult
$Res call({
 String id, String name, String imel, int region_id, int district_id, int balance_organization_id, String userPhoneNum, String devicePhoneNum, String location, String sendDataTime, String sendInfoTime, String programVersion, num temperture, num battery, num signal, DateTime date, int status, bool defective, bool isIntegration, String? sensorTypeId, String? userId, DateTime? integrationDate, DateTime createdAt, DateTime updatedAt, DataForLastData? lastData
});


$DataForLastDataCopyWith<$Res>? get lastData;

}
/// @nodoc
class _$LastDataCopyWithImpl<$Res>
    implements $LastDataCopyWith<$Res> {
  _$LastDataCopyWithImpl(this._self, this._then);

  final LastData _self;
  final $Res Function(LastData) _then;

/// Create a copy of LastData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imel = null,Object? region_id = null,Object? district_id = null,Object? balance_organization_id = null,Object? userPhoneNum = null,Object? devicePhoneNum = null,Object? location = null,Object? sendDataTime = null,Object? sendInfoTime = null,Object? programVersion = null,Object? temperture = null,Object? battery = null,Object? signal = null,Object? date = null,Object? status = null,Object? defective = null,Object? isIntegration = null,Object? sensorTypeId = freezed,Object? userId = freezed,Object? integrationDate = freezed,Object? createdAt = null,Object? updatedAt = null,Object? lastData = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imel: null == imel ? _self.imel : imel // ignore: cast_nullable_to_non_nullable
as String,region_id: null == region_id ? _self.region_id : region_id // ignore: cast_nullable_to_non_nullable
as int,district_id: null == district_id ? _self.district_id : district_id // ignore: cast_nullable_to_non_nullable
as int,balance_organization_id: null == balance_organization_id ? _self.balance_organization_id : balance_organization_id // ignore: cast_nullable_to_non_nullable
as int,userPhoneNum: null == userPhoneNum ? _self.userPhoneNum : userPhoneNum // ignore: cast_nullable_to_non_nullable
as String,devicePhoneNum: null == devicePhoneNum ? _self.devicePhoneNum : devicePhoneNum // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,sendDataTime: null == sendDataTime ? _self.sendDataTime : sendDataTime // ignore: cast_nullable_to_non_nullable
as String,sendInfoTime: null == sendInfoTime ? _self.sendInfoTime : sendInfoTime // ignore: cast_nullable_to_non_nullable
as String,programVersion: null == programVersion ? _self.programVersion : programVersion // ignore: cast_nullable_to_non_nullable
as String,temperture: null == temperture ? _self.temperture : temperture // ignore: cast_nullable_to_non_nullable
as num,battery: null == battery ? _self.battery : battery // ignore: cast_nullable_to_non_nullable
as num,signal: null == signal ? _self.signal : signal // ignore: cast_nullable_to_non_nullable
as num,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,defective: null == defective ? _self.defective : defective // ignore: cast_nullable_to_non_nullable
as bool,isIntegration: null == isIntegration ? _self.isIntegration : isIntegration // ignore: cast_nullable_to_non_nullable
as bool,sensorTypeId: freezed == sensorTypeId ? _self.sensorTypeId : sensorTypeId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,integrationDate: freezed == integrationDate ? _self.integrationDate : integrationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastData: freezed == lastData ? _self.lastData : lastData // ignore: cast_nullable_to_non_nullable
as DataForLastData?,
  ));
}
/// Create a copy of LastData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataForLastDataCopyWith<$Res>? get lastData {
    if (_self.lastData == null) {
    return null;
  }

  return $DataForLastDataCopyWith<$Res>(_self.lastData!, (value) {
    return _then(_self.copyWith(lastData: value));
  });
}
}


/// Adds pattern-matching-related methods to [LastData].
extension LastDataPatterns on LastData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastData value)  $default,){
final _that = this;
switch (_that) {
case _LastData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastData value)?  $default,){
final _that = this;
switch (_that) {
case _LastData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String imel,  int region_id,  int district_id,  int balance_organization_id,  String userPhoneNum,  String devicePhoneNum,  String location,  String sendDataTime,  String sendInfoTime,  String programVersion,  num temperture,  num battery,  num signal,  DateTime date,  int status,  bool defective,  bool isIntegration,  String? sensorTypeId,  String? userId,  DateTime? integrationDate,  DateTime createdAt,  DateTime updatedAt,  DataForLastData? lastData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastData() when $default != null:
return $default(_that.id,_that.name,_that.imel,_that.region_id,_that.district_id,_that.balance_organization_id,_that.userPhoneNum,_that.devicePhoneNum,_that.location,_that.sendDataTime,_that.sendInfoTime,_that.programVersion,_that.temperture,_that.battery,_that.signal,_that.date,_that.status,_that.defective,_that.isIntegration,_that.sensorTypeId,_that.userId,_that.integrationDate,_that.createdAt,_that.updatedAt,_that.lastData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String imel,  int region_id,  int district_id,  int balance_organization_id,  String userPhoneNum,  String devicePhoneNum,  String location,  String sendDataTime,  String sendInfoTime,  String programVersion,  num temperture,  num battery,  num signal,  DateTime date,  int status,  bool defective,  bool isIntegration,  String? sensorTypeId,  String? userId,  DateTime? integrationDate,  DateTime createdAt,  DateTime updatedAt,  DataForLastData? lastData)  $default,) {final _that = this;
switch (_that) {
case _LastData():
return $default(_that.id,_that.name,_that.imel,_that.region_id,_that.district_id,_that.balance_organization_id,_that.userPhoneNum,_that.devicePhoneNum,_that.location,_that.sendDataTime,_that.sendInfoTime,_that.programVersion,_that.temperture,_that.battery,_that.signal,_that.date,_that.status,_that.defective,_that.isIntegration,_that.sensorTypeId,_that.userId,_that.integrationDate,_that.createdAt,_that.updatedAt,_that.lastData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String imel,  int region_id,  int district_id,  int balance_organization_id,  String userPhoneNum,  String devicePhoneNum,  String location,  String sendDataTime,  String sendInfoTime,  String programVersion,  num temperture,  num battery,  num signal,  DateTime date,  int status,  bool defective,  bool isIntegration,  String? sensorTypeId,  String? userId,  DateTime? integrationDate,  DateTime createdAt,  DateTime updatedAt,  DataForLastData? lastData)?  $default,) {final _that = this;
switch (_that) {
case _LastData() when $default != null:
return $default(_that.id,_that.name,_that.imel,_that.region_id,_that.district_id,_that.balance_organization_id,_that.userPhoneNum,_that.devicePhoneNum,_that.location,_that.sendDataTime,_that.sendInfoTime,_that.programVersion,_that.temperture,_that.battery,_that.signal,_that.date,_that.status,_that.defective,_that.isIntegration,_that.sensorTypeId,_that.userId,_that.integrationDate,_that.createdAt,_that.updatedAt,_that.lastData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LastData implements LastData {
  const _LastData({required this.id, required this.name, required this.imel, required this.region_id, required this.district_id, required this.balance_organization_id, this.userPhoneNum = '', this.devicePhoneNum = '', this.location = '', this.sendDataTime = '', this.sendInfoTime = '', this.programVersion = '', this.temperture = 0, this.battery = 0, this.signal = 0, required this.date, this.status = 0, this.defective = false, this.isIntegration = false, this.sensorTypeId, this.userId, this.integrationDate, required this.createdAt, required this.updatedAt, this.lastData});
  factory _LastData.fromJson(Map<String, dynamic> json) => _$LastDataFromJson(json);

@override final  String id;
@override final  String name;
@override final  String imel;
@override final  int region_id;
@override final  int district_id;
@override final  int balance_organization_id;
@override@JsonKey() final  String userPhoneNum;
@override@JsonKey() final  String devicePhoneNum;
@override@JsonKey() final  String location;
@override@JsonKey() final  String sendDataTime;
@override@JsonKey() final  String sendInfoTime;
@override@JsonKey() final  String programVersion;
@override@JsonKey() final  num temperture;
@override@JsonKey() final  num battery;
@override@JsonKey() final  num signal;
@override final  DateTime date;
@override@JsonKey() final  int status;
@override@JsonKey() final  bool defective;
@override@JsonKey() final  bool isIntegration;
@override final  String? sensorTypeId;
@override final  String? userId;
@override final  DateTime? integrationDate;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  DataForLastData? lastData;

/// Create a copy of LastData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastDataCopyWith<_LastData> get copyWith => __$LastDataCopyWithImpl<_LastData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LastDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imel, imel) || other.imel == imel)&&(identical(other.region_id, region_id) || other.region_id == region_id)&&(identical(other.district_id, district_id) || other.district_id == district_id)&&(identical(other.balance_organization_id, balance_organization_id) || other.balance_organization_id == balance_organization_id)&&(identical(other.userPhoneNum, userPhoneNum) || other.userPhoneNum == userPhoneNum)&&(identical(other.devicePhoneNum, devicePhoneNum) || other.devicePhoneNum == devicePhoneNum)&&(identical(other.location, location) || other.location == location)&&(identical(other.sendDataTime, sendDataTime) || other.sendDataTime == sendDataTime)&&(identical(other.sendInfoTime, sendInfoTime) || other.sendInfoTime == sendInfoTime)&&(identical(other.programVersion, programVersion) || other.programVersion == programVersion)&&(identical(other.temperture, temperture) || other.temperture == temperture)&&(identical(other.battery, battery) || other.battery == battery)&&(identical(other.signal, signal) || other.signal == signal)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.defective, defective) || other.defective == defective)&&(identical(other.isIntegration, isIntegration) || other.isIntegration == isIntegration)&&(identical(other.sensorTypeId, sensorTypeId) || other.sensorTypeId == sensorTypeId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.integrationDate, integrationDate) || other.integrationDate == integrationDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.lastData, lastData) || other.lastData == lastData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,imel,region_id,district_id,balance_organization_id,userPhoneNum,devicePhoneNum,location,sendDataTime,sendInfoTime,programVersion,temperture,battery,signal,date,status,defective,isIntegration,sensorTypeId,userId,integrationDate,createdAt,updatedAt,lastData]);

@override
String toString() {
  return 'LastData(id: $id, name: $name, imel: $imel, region_id: $region_id, district_id: $district_id, balance_organization_id: $balance_organization_id, userPhoneNum: $userPhoneNum, devicePhoneNum: $devicePhoneNum, location: $location, sendDataTime: $sendDataTime, sendInfoTime: $sendInfoTime, programVersion: $programVersion, temperture: $temperture, battery: $battery, signal: $signal, date: $date, status: $status, defective: $defective, isIntegration: $isIntegration, sensorTypeId: $sensorTypeId, userId: $userId, integrationDate: $integrationDate, createdAt: $createdAt, updatedAt: $updatedAt, lastData: $lastData)';
}


}

/// @nodoc
abstract mixin class _$LastDataCopyWith<$Res> implements $LastDataCopyWith<$Res> {
  factory _$LastDataCopyWith(_LastData value, $Res Function(_LastData) _then) = __$LastDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String imel, int region_id, int district_id, int balance_organization_id, String userPhoneNum, String devicePhoneNum, String location, String sendDataTime, String sendInfoTime, String programVersion, num temperture, num battery, num signal, DateTime date, int status, bool defective, bool isIntegration, String? sensorTypeId, String? userId, DateTime? integrationDate, DateTime createdAt, DateTime updatedAt, DataForLastData? lastData
});


@override $DataForLastDataCopyWith<$Res>? get lastData;

}
/// @nodoc
class __$LastDataCopyWithImpl<$Res>
    implements _$LastDataCopyWith<$Res> {
  __$LastDataCopyWithImpl(this._self, this._then);

  final _LastData _self;
  final $Res Function(_LastData) _then;

/// Create a copy of LastData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imel = null,Object? region_id = null,Object? district_id = null,Object? balance_organization_id = null,Object? userPhoneNum = null,Object? devicePhoneNum = null,Object? location = null,Object? sendDataTime = null,Object? sendInfoTime = null,Object? programVersion = null,Object? temperture = null,Object? battery = null,Object? signal = null,Object? date = null,Object? status = null,Object? defective = null,Object? isIntegration = null,Object? sensorTypeId = freezed,Object? userId = freezed,Object? integrationDate = freezed,Object? createdAt = null,Object? updatedAt = null,Object? lastData = freezed,}) {
  return _then(_LastData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imel: null == imel ? _self.imel : imel // ignore: cast_nullable_to_non_nullable
as String,region_id: null == region_id ? _self.region_id : region_id // ignore: cast_nullable_to_non_nullable
as int,district_id: null == district_id ? _self.district_id : district_id // ignore: cast_nullable_to_non_nullable
as int,balance_organization_id: null == balance_organization_id ? _self.balance_organization_id : balance_organization_id // ignore: cast_nullable_to_non_nullable
as int,userPhoneNum: null == userPhoneNum ? _self.userPhoneNum : userPhoneNum // ignore: cast_nullable_to_non_nullable
as String,devicePhoneNum: null == devicePhoneNum ? _self.devicePhoneNum : devicePhoneNum // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,sendDataTime: null == sendDataTime ? _self.sendDataTime : sendDataTime // ignore: cast_nullable_to_non_nullable
as String,sendInfoTime: null == sendInfoTime ? _self.sendInfoTime : sendInfoTime // ignore: cast_nullable_to_non_nullable
as String,programVersion: null == programVersion ? _self.programVersion : programVersion // ignore: cast_nullable_to_non_nullable
as String,temperture: null == temperture ? _self.temperture : temperture // ignore: cast_nullable_to_non_nullable
as num,battery: null == battery ? _self.battery : battery // ignore: cast_nullable_to_non_nullable
as num,signal: null == signal ? _self.signal : signal // ignore: cast_nullable_to_non_nullable
as num,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,defective: null == defective ? _self.defective : defective // ignore: cast_nullable_to_non_nullable
as bool,isIntegration: null == isIntegration ? _self.isIntegration : isIntegration // ignore: cast_nullable_to_non_nullable
as bool,sensorTypeId: freezed == sensorTypeId ? _self.sensorTypeId : sensorTypeId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,integrationDate: freezed == integrationDate ? _self.integrationDate : integrationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastData: freezed == lastData ? _self.lastData : lastData // ignore: cast_nullable_to_non_nullable
as DataForLastData?,
  ));
}

/// Create a copy of LastData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataForLastDataCopyWith<$Res>? get lastData {
    if (_self.lastData == null) {
    return null;
  }

  return $DataForLastDataCopyWith<$Res>(_self.lastData!, (value) {
    return _then(_self.copyWith(lastData: value));
  });
}
}


/// @nodoc
mixin _$DataForLastData {

 String get id; String get stationsId; num get level; num get volume; num get correction; DateTime get date; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of DataForLastData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataForLastDataCopyWith<DataForLastData> get copyWith => _$DataForLastDataCopyWithImpl<DataForLastData>(this as DataForLastData, _$identity);

  /// Serializes this DataForLastData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataForLastData&&(identical(other.id, id) || other.id == id)&&(identical(other.stationsId, stationsId) || other.stationsId == stationsId)&&(identical(other.level, level) || other.level == level)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.correction, correction) || other.correction == correction)&&(identical(other.date, date) || other.date == date)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,stationsId,level,volume,correction,date,createdAt,updatedAt);

@override
String toString() {
  return 'DataForLastData(id: $id, stationsId: $stationsId, level: $level, volume: $volume, correction: $correction, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DataForLastDataCopyWith<$Res>  {
  factory $DataForLastDataCopyWith(DataForLastData value, $Res Function(DataForLastData) _then) = _$DataForLastDataCopyWithImpl;
@useResult
$Res call({
 String id, String stationsId, num level, num volume, num correction, DateTime date, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$DataForLastDataCopyWithImpl<$Res>
    implements $DataForLastDataCopyWith<$Res> {
  _$DataForLastDataCopyWithImpl(this._self, this._then);

  final DataForLastData _self;
  final $Res Function(DataForLastData) _then;

/// Create a copy of DataForLastData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? stationsId = null,Object? level = null,Object? volume = null,Object? correction = null,Object? date = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,stationsId: null == stationsId ? _self.stationsId : stationsId // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as num,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as num,correction: null == correction ? _self.correction : correction // ignore: cast_nullable_to_non_nullable
as num,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DataForLastData].
extension DataForLastDataPatterns on DataForLastData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DataForLastData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataForLastData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DataForLastData value)  $default,){
final _that = this;
switch (_that) {
case _DataForLastData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DataForLastData value)?  $default,){
final _that = this;
switch (_that) {
case _DataForLastData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String stationsId,  num level,  num volume,  num correction,  DateTime date,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataForLastData() when $default != null:
return $default(_that.id,_that.stationsId,_that.level,_that.volume,_that.correction,_that.date,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String stationsId,  num level,  num volume,  num correction,  DateTime date,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DataForLastData():
return $default(_that.id,_that.stationsId,_that.level,_that.volume,_that.correction,_that.date,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String stationsId,  num level,  num volume,  num correction,  DateTime date,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DataForLastData() when $default != null:
return $default(_that.id,_that.stationsId,_that.level,_that.volume,_that.correction,_that.date,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DataForLastData implements DataForLastData {
  const _DataForLastData({required this.id, required this.stationsId, required this.level, required this.volume, required this.correction, required this.date, required this.createdAt, required this.updatedAt});
  factory _DataForLastData.fromJson(Map<String, dynamic> json) => _$DataForLastDataFromJson(json);

@override final  String id;
@override final  String stationsId;
@override final  num level;
@override final  num volume;
@override final  num correction;
@override final  DateTime date;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of DataForLastData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataForLastDataCopyWith<_DataForLastData> get copyWith => __$DataForLastDataCopyWithImpl<_DataForLastData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataForLastDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataForLastData&&(identical(other.id, id) || other.id == id)&&(identical(other.stationsId, stationsId) || other.stationsId == stationsId)&&(identical(other.level, level) || other.level == level)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.correction, correction) || other.correction == correction)&&(identical(other.date, date) || other.date == date)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,stationsId,level,volume,correction,date,createdAt,updatedAt);

@override
String toString() {
  return 'DataForLastData(id: $id, stationsId: $stationsId, level: $level, volume: $volume, correction: $correction, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DataForLastDataCopyWith<$Res> implements $DataForLastDataCopyWith<$Res> {
  factory _$DataForLastDataCopyWith(_DataForLastData value, $Res Function(_DataForLastData) _then) = __$DataForLastDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String stationsId, num level, num volume, num correction, DateTime date, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$DataForLastDataCopyWithImpl<$Res>
    implements _$DataForLastDataCopyWith<$Res> {
  __$DataForLastDataCopyWithImpl(this._self, this._then);

  final _DataForLastData _self;
  final $Res Function(_DataForLastData) _then;

/// Create a copy of DataForLastData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? stationsId = null,Object? level = null,Object? volume = null,Object? correction = null,Object? date = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_DataForLastData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,stationsId: null == stationsId ? _self.stationsId : stationsId // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as num,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as num,correction: null == correction ? _self.correction : correction // ignore: cast_nullable_to_non_nullable
as num,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
