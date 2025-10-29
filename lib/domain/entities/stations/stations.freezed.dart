// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Stations {

 String get id; String get name; String get imel; int get region_id; int get district_id; int get balance_organization_id; String get userPhoneNum; String get devicePhoneNum; String get location; String get sendDataTime; String get sendInfoTime; String get programVersion; num get temperture; num get battery; num get signal; DateTime get date; int? get status; bool? get defective; bool? get isIntegration; String? get sensorTypeId; String? get userId; DateTime? get integrationDate; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Stations
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StationsCopyWith<Stations> get copyWith => _$StationsCopyWithImpl<Stations>(this as Stations, _$identity);

  /// Serializes this Stations to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stations&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imel, imel) || other.imel == imel)&&(identical(other.region_id, region_id) || other.region_id == region_id)&&(identical(other.district_id, district_id) || other.district_id == district_id)&&(identical(other.balance_organization_id, balance_organization_id) || other.balance_organization_id == balance_organization_id)&&(identical(other.userPhoneNum, userPhoneNum) || other.userPhoneNum == userPhoneNum)&&(identical(other.devicePhoneNum, devicePhoneNum) || other.devicePhoneNum == devicePhoneNum)&&(identical(other.location, location) || other.location == location)&&(identical(other.sendDataTime, sendDataTime) || other.sendDataTime == sendDataTime)&&(identical(other.sendInfoTime, sendInfoTime) || other.sendInfoTime == sendInfoTime)&&(identical(other.programVersion, programVersion) || other.programVersion == programVersion)&&(identical(other.temperture, temperture) || other.temperture == temperture)&&(identical(other.battery, battery) || other.battery == battery)&&(identical(other.signal, signal) || other.signal == signal)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.defective, defective) || other.defective == defective)&&(identical(other.isIntegration, isIntegration) || other.isIntegration == isIntegration)&&(identical(other.sensorTypeId, sensorTypeId) || other.sensorTypeId == sensorTypeId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.integrationDate, integrationDate) || other.integrationDate == integrationDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,imel,region_id,district_id,balance_organization_id,userPhoneNum,devicePhoneNum,location,sendDataTime,sendInfoTime,programVersion,temperture,battery,signal,date,status,defective,isIntegration,sensorTypeId,userId,integrationDate,createdAt,updatedAt]);

@override
String toString() {
  return 'Stations(id: $id, name: $name, imel: $imel, region_id: $region_id, district_id: $district_id, balance_organization_id: $balance_organization_id, userPhoneNum: $userPhoneNum, devicePhoneNum: $devicePhoneNum, location: $location, sendDataTime: $sendDataTime, sendInfoTime: $sendInfoTime, programVersion: $programVersion, temperture: $temperture, battery: $battery, signal: $signal, date: $date, status: $status, defective: $defective, isIntegration: $isIntegration, sensorTypeId: $sensorTypeId, userId: $userId, integrationDate: $integrationDate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $StationsCopyWith<$Res>  {
  factory $StationsCopyWith(Stations value, $Res Function(Stations) _then) = _$StationsCopyWithImpl;
@useResult
$Res call({
 String id, String name, String imel, int region_id, int district_id, int balance_organization_id, String userPhoneNum, String devicePhoneNum, String location, String sendDataTime, String sendInfoTime, String programVersion, num temperture, num battery, num signal, DateTime date, int? status, bool? defective, bool? isIntegration, String? sensorTypeId, String? userId, DateTime? integrationDate, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$StationsCopyWithImpl<$Res>
    implements $StationsCopyWith<$Res> {
  _$StationsCopyWithImpl(this._self, this._then);

  final Stations _self;
  final $Res Function(Stations) _then;

/// Create a copy of Stations
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imel = null,Object? region_id = null,Object? district_id = null,Object? balance_organization_id = null,Object? userPhoneNum = null,Object? devicePhoneNum = null,Object? location = null,Object? sendDataTime = null,Object? sendInfoTime = null,Object? programVersion = null,Object? temperture = null,Object? battery = null,Object? signal = null,Object? date = null,Object? status = freezed,Object? defective = freezed,Object? isIntegration = freezed,Object? sensorTypeId = freezed,Object? userId = freezed,Object? integrationDate = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
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
as DateTime,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,defective: freezed == defective ? _self.defective : defective // ignore: cast_nullable_to_non_nullable
as bool?,isIntegration: freezed == isIntegration ? _self.isIntegration : isIntegration // ignore: cast_nullable_to_non_nullable
as bool?,sensorTypeId: freezed == sensorTypeId ? _self.sensorTypeId : sensorTypeId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,integrationDate: freezed == integrationDate ? _self.integrationDate : integrationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Stations].
extension StationsPatterns on Stations {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Stations value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Stations() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Stations value)  $default,){
final _that = this;
switch (_that) {
case _Stations():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Stations value)?  $default,){
final _that = this;
switch (_that) {
case _Stations() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String imel,  int region_id,  int district_id,  int balance_organization_id,  String userPhoneNum,  String devicePhoneNum,  String location,  String sendDataTime,  String sendInfoTime,  String programVersion,  num temperture,  num battery,  num signal,  DateTime date,  int? status,  bool? defective,  bool? isIntegration,  String? sensorTypeId,  String? userId,  DateTime? integrationDate,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Stations() when $default != null:
return $default(_that.id,_that.name,_that.imel,_that.region_id,_that.district_id,_that.balance_organization_id,_that.userPhoneNum,_that.devicePhoneNum,_that.location,_that.sendDataTime,_that.sendInfoTime,_that.programVersion,_that.temperture,_that.battery,_that.signal,_that.date,_that.status,_that.defective,_that.isIntegration,_that.sensorTypeId,_that.userId,_that.integrationDate,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String imel,  int region_id,  int district_id,  int balance_organization_id,  String userPhoneNum,  String devicePhoneNum,  String location,  String sendDataTime,  String sendInfoTime,  String programVersion,  num temperture,  num battery,  num signal,  DateTime date,  int? status,  bool? defective,  bool? isIntegration,  String? sensorTypeId,  String? userId,  DateTime? integrationDate,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Stations():
return $default(_that.id,_that.name,_that.imel,_that.region_id,_that.district_id,_that.balance_organization_id,_that.userPhoneNum,_that.devicePhoneNum,_that.location,_that.sendDataTime,_that.sendInfoTime,_that.programVersion,_that.temperture,_that.battery,_that.signal,_that.date,_that.status,_that.defective,_that.isIntegration,_that.sensorTypeId,_that.userId,_that.integrationDate,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String imel,  int region_id,  int district_id,  int balance_organization_id,  String userPhoneNum,  String devicePhoneNum,  String location,  String sendDataTime,  String sendInfoTime,  String programVersion,  num temperture,  num battery,  num signal,  DateTime date,  int? status,  bool? defective,  bool? isIntegration,  String? sensorTypeId,  String? userId,  DateTime? integrationDate,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Stations() when $default != null:
return $default(_that.id,_that.name,_that.imel,_that.region_id,_that.district_id,_that.balance_organization_id,_that.userPhoneNum,_that.devicePhoneNum,_that.location,_that.sendDataTime,_that.sendInfoTime,_that.programVersion,_that.temperture,_that.battery,_that.signal,_that.date,_that.status,_that.defective,_that.isIntegration,_that.sensorTypeId,_that.userId,_that.integrationDate,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Stations implements Stations {
   _Stations({required this.id, required this.name, required this.imel, required this.region_id, required this.district_id, required this.balance_organization_id, required this.userPhoneNum, required this.devicePhoneNum, required this.location, required this.sendDataTime, required this.sendInfoTime, required this.programVersion, required this.temperture, required this.battery, required this.signal, required this.date, required this.status, required this.defective, required this.isIntegration, required this.sensorTypeId, required this.userId, required this.integrationDate, required this.createdAt, required this.updatedAt});
  factory _Stations.fromJson(Map<String, dynamic> json) => _$StationsFromJson(json);

@override final  String id;
@override final  String name;
@override final  String imel;
@override final  int region_id;
@override final  int district_id;
@override final  int balance_organization_id;
@override final  String userPhoneNum;
@override final  String devicePhoneNum;
@override final  String location;
@override final  String sendDataTime;
@override final  String sendInfoTime;
@override final  String programVersion;
@override final  num temperture;
@override final  num battery;
@override final  num signal;
@override final  DateTime date;
@override final  int? status;
@override final  bool? defective;
@override final  bool? isIntegration;
@override final  String? sensorTypeId;
@override final  String? userId;
@override final  DateTime? integrationDate;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of Stations
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StationsCopyWith<_Stations> get copyWith => __$StationsCopyWithImpl<_Stations>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StationsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stations&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imel, imel) || other.imel == imel)&&(identical(other.region_id, region_id) || other.region_id == region_id)&&(identical(other.district_id, district_id) || other.district_id == district_id)&&(identical(other.balance_organization_id, balance_organization_id) || other.balance_organization_id == balance_organization_id)&&(identical(other.userPhoneNum, userPhoneNum) || other.userPhoneNum == userPhoneNum)&&(identical(other.devicePhoneNum, devicePhoneNum) || other.devicePhoneNum == devicePhoneNum)&&(identical(other.location, location) || other.location == location)&&(identical(other.sendDataTime, sendDataTime) || other.sendDataTime == sendDataTime)&&(identical(other.sendInfoTime, sendInfoTime) || other.sendInfoTime == sendInfoTime)&&(identical(other.programVersion, programVersion) || other.programVersion == programVersion)&&(identical(other.temperture, temperture) || other.temperture == temperture)&&(identical(other.battery, battery) || other.battery == battery)&&(identical(other.signal, signal) || other.signal == signal)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.defective, defective) || other.defective == defective)&&(identical(other.isIntegration, isIntegration) || other.isIntegration == isIntegration)&&(identical(other.sensorTypeId, sensorTypeId) || other.sensorTypeId == sensorTypeId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.integrationDate, integrationDate) || other.integrationDate == integrationDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,imel,region_id,district_id,balance_organization_id,userPhoneNum,devicePhoneNum,location,sendDataTime,sendInfoTime,programVersion,temperture,battery,signal,date,status,defective,isIntegration,sensorTypeId,userId,integrationDate,createdAt,updatedAt]);

@override
String toString() {
  return 'Stations(id: $id, name: $name, imel: $imel, region_id: $region_id, district_id: $district_id, balance_organization_id: $balance_organization_id, userPhoneNum: $userPhoneNum, devicePhoneNum: $devicePhoneNum, location: $location, sendDataTime: $sendDataTime, sendInfoTime: $sendInfoTime, programVersion: $programVersion, temperture: $temperture, battery: $battery, signal: $signal, date: $date, status: $status, defective: $defective, isIntegration: $isIntegration, sensorTypeId: $sensorTypeId, userId: $userId, integrationDate: $integrationDate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$StationsCopyWith<$Res> implements $StationsCopyWith<$Res> {
  factory _$StationsCopyWith(_Stations value, $Res Function(_Stations) _then) = __$StationsCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String imel, int region_id, int district_id, int balance_organization_id, String userPhoneNum, String devicePhoneNum, String location, String sendDataTime, String sendInfoTime, String programVersion, num temperture, num battery, num signal, DateTime date, int? status, bool? defective, bool? isIntegration, String? sensorTypeId, String? userId, DateTime? integrationDate, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$StationsCopyWithImpl<$Res>
    implements _$StationsCopyWith<$Res> {
  __$StationsCopyWithImpl(this._self, this._then);

  final _Stations _self;
  final $Res Function(_Stations) _then;

/// Create a copy of Stations
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imel = null,Object? region_id = null,Object? district_id = null,Object? balance_organization_id = null,Object? userPhoneNum = null,Object? devicePhoneNum = null,Object? location = null,Object? sendDataTime = null,Object? sendInfoTime = null,Object? programVersion = null,Object? temperture = null,Object? battery = null,Object? signal = null,Object? date = null,Object? status = freezed,Object? defective = freezed,Object? isIntegration = freezed,Object? sensorTypeId = freezed,Object? userId = freezed,Object? integrationDate = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Stations(
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
as DateTime,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,defective: freezed == defective ? _self.defective : defective // ignore: cast_nullable_to_non_nullable
as bool?,isIntegration: freezed == isIntegration ? _self.isIntegration : isIntegration // ignore: cast_nullable_to_non_nullable
as bool?,sensorTypeId: freezed == sensorTypeId ? _self.sensorTypeId : sensorTypeId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,integrationDate: freezed == integrationDate ? _self.integrationDate : integrationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
