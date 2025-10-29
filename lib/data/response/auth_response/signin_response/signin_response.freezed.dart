// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInResponse {

 int get statusCode; String get message; SignInData get data;
/// Create a copy of SignInResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInResponseCopyWith<SignInResponse> get copyWith => _$SignInResponseCopyWithImpl<SignInResponse>(this as SignInResponse, _$identity);

  /// Serializes this SignInResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,message,data);

@override
String toString() {
  return 'SignInResponse(statusCode: $statusCode, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $SignInResponseCopyWith<$Res>  {
  factory $SignInResponseCopyWith(SignInResponse value, $Res Function(SignInResponse) _then) = _$SignInResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, String message, SignInData data
});


$SignInDataCopyWith<$Res> get data;

}
/// @nodoc
class _$SignInResponseCopyWithImpl<$Res>
    implements $SignInResponseCopyWith<$Res> {
  _$SignInResponseCopyWithImpl(this._self, this._then);

  final SignInResponse _self;
  final $Res Function(SignInResponse) _then;

/// Create a copy of SignInResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SignInData,
  ));
}
/// Create a copy of SignInResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignInDataCopyWith<$Res> get data {
  
  return $SignInDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignInResponse].
extension SignInResponsePatterns on SignInResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInResponse value)  $default,){
final _that = this;
switch (_that) {
case _SignInResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SignInResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int statusCode,  String message,  SignInData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int statusCode,  String message,  SignInData data)  $default,) {final _that = this;
switch (_that) {
case _SignInResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int statusCode,  String message,  SignInData data)?  $default,) {final _that = this;
switch (_that) {
case _SignInResponse() when $default != null:
return $default(_that.statusCode,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignInResponse implements SignInResponse {
   _SignInResponse({required this.statusCode, required this.message, required this.data});
  factory _SignInResponse.fromJson(Map<String, dynamic> json) => _$SignInResponseFromJson(json);

@override final  int statusCode;
@override final  String message;
@override final  SignInData data;

/// Create a copy of SignInResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInResponseCopyWith<_SignInResponse> get copyWith => __$SignInResponseCopyWithImpl<_SignInResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,message,data);

@override
String toString() {
  return 'SignInResponse(statusCode: $statusCode, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SignInResponseCopyWith<$Res> implements $SignInResponseCopyWith<$Res> {
  factory _$SignInResponseCopyWith(_SignInResponse value, $Res Function(_SignInResponse) _then) = __$SignInResponseCopyWithImpl;
@override @useResult
$Res call({
 int statusCode, String message, SignInData data
});


@override $SignInDataCopyWith<$Res> get data;

}
/// @nodoc
class __$SignInResponseCopyWithImpl<$Res>
    implements _$SignInResponseCopyWith<$Res> {
  __$SignInResponseCopyWithImpl(this._self, this._then);

  final _SignInResponse _self;
  final $Res Function(_SignInResponse) _then;

/// Create a copy of SignInResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? message = null,Object? data = null,}) {
  return _then(_SignInResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SignInData,
  ));
}

/// Create a copy of SignInResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignInDataCopyWith<$Res> get data {
  
  return $SignInDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$SignInData {

 String get accessToken; String get refreshToken; Users get user;
/// Create a copy of SignInData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInDataCopyWith<SignInData> get copyWith => _$SignInDataCopyWithImpl<SignInData>(this as SignInData, _$identity);

  /// Serializes this SignInData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInData&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,user);

@override
String toString() {
  return 'SignInData(accessToken: $accessToken, refreshToken: $refreshToken, user: $user)';
}


}

/// @nodoc
abstract mixin class $SignInDataCopyWith<$Res>  {
  factory $SignInDataCopyWith(SignInData value, $Res Function(SignInData) _then) = _$SignInDataCopyWithImpl;
@useResult
$Res call({
 String accessToken, String refreshToken, Users user
});


$UsersCopyWith<$Res> get user;

}
/// @nodoc
class _$SignInDataCopyWithImpl<$Res>
    implements $SignInDataCopyWith<$Res> {
  _$SignInDataCopyWithImpl(this._self, this._then);

  final SignInData _self;
  final $Res Function(SignInData) _then;

/// Create a copy of SignInData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,Object? user = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as Users,
  ));
}
/// Create a copy of SignInData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsersCopyWith<$Res> get user {
  
  return $UsersCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignInData].
extension SignInDataPatterns on SignInData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInData value)  $default,){
final _that = this;
switch (_that) {
case _SignInData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInData value)?  $default,){
final _that = this;
switch (_that) {
case _SignInData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  Users user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInData() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  Users user)  $default,) {final _that = this;
switch (_that) {
case _SignInData():
return $default(_that.accessToken,_that.refreshToken,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String refreshToken,  Users user)?  $default,) {final _that = this;
switch (_that) {
case _SignInData() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignInData implements SignInData {
   _SignInData({required this.accessToken, required this.refreshToken, required this.user});
  factory _SignInData.fromJson(Map<String, dynamic> json) => _$SignInDataFromJson(json);

@override final  String accessToken;
@override final  String refreshToken;
@override final  Users user;

/// Create a copy of SignInData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInDataCopyWith<_SignInData> get copyWith => __$SignInDataCopyWithImpl<_SignInData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInData&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,user);

@override
String toString() {
  return 'SignInData(accessToken: $accessToken, refreshToken: $refreshToken, user: $user)';
}


}

/// @nodoc
abstract mixin class _$SignInDataCopyWith<$Res> implements $SignInDataCopyWith<$Res> {
  factory _$SignInDataCopyWith(_SignInData value, $Res Function(_SignInData) _then) = __$SignInDataCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String refreshToken, Users user
});


@override $UsersCopyWith<$Res> get user;

}
/// @nodoc
class __$SignInDataCopyWithImpl<$Res>
    implements _$SignInDataCopyWith<$Res> {
  __$SignInDataCopyWithImpl(this._self, this._then);

  final _SignInData _self;
  final $Res Function(_SignInData) _then;

/// Create a copy of SignInData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,Object? user = null,}) {
  return _then(_SignInData(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as Users,
  ));
}

/// Create a copy of SignInData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsersCopyWith<$Res> get user {
  
  return $UsersCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
