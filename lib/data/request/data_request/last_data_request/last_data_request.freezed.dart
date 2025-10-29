// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LastDataRequest {

 int get page; int get perPage;
/// Create a copy of LastDataRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastDataRequestCopyWith<LastDataRequest> get copyWith => _$LastDataRequestCopyWithImpl<LastDataRequest>(this as LastDataRequest, _$identity);

  /// Serializes this LastDataRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastDataRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage);

@override
String toString() {
  return 'LastDataRequest(page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class $LastDataRequestCopyWith<$Res>  {
  factory $LastDataRequestCopyWith(LastDataRequest value, $Res Function(LastDataRequest) _then) = _$LastDataRequestCopyWithImpl;
@useResult
$Res call({
 int page, int perPage
});




}
/// @nodoc
class _$LastDataRequestCopyWithImpl<$Res>
    implements $LastDataRequestCopyWith<$Res> {
  _$LastDataRequestCopyWithImpl(this._self, this._then);

  final LastDataRequest _self;
  final $Res Function(LastDataRequest) _then;

/// Create a copy of LastDataRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? perPage = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LastDataRequest].
extension LastDataRequestPatterns on LastDataRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastDataRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastDataRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastDataRequest value)  $default,){
final _that = this;
switch (_that) {
case _LastDataRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastDataRequest value)?  $default,){
final _that = this;
switch (_that) {
case _LastDataRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int perPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastDataRequest() when $default != null:
return $default(_that.page,_that.perPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int perPage)  $default,) {final _that = this;
switch (_that) {
case _LastDataRequest():
return $default(_that.page,_that.perPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int perPage)?  $default,) {final _that = this;
switch (_that) {
case _LastDataRequest() when $default != null:
return $default(_that.page,_that.perPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LastDataRequest implements LastDataRequest {
   _LastDataRequest({required this.page, required this.perPage});
  factory _LastDataRequest.fromJson(Map<String, dynamic> json) => _$LastDataRequestFromJson(json);

@override final  int page;
@override final  int perPage;

/// Create a copy of LastDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastDataRequestCopyWith<_LastDataRequest> get copyWith => __$LastDataRequestCopyWithImpl<_LastDataRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LastDataRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastDataRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage);

@override
String toString() {
  return 'LastDataRequest(page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$LastDataRequestCopyWith<$Res> implements $LastDataRequestCopyWith<$Res> {
  factory _$LastDataRequestCopyWith(_LastDataRequest value, $Res Function(_LastDataRequest) _then) = __$LastDataRequestCopyWithImpl;
@override @useResult
$Res call({
 int page, int perPage
});




}
/// @nodoc
class __$LastDataRequestCopyWithImpl<$Res>
    implements _$LastDataRequestCopyWith<$Res> {
  __$LastDataRequestCopyWithImpl(this._self, this._then);

  final _LastDataRequest _self;
  final $Res Function(_LastDataRequest) _then;

/// Create a copy of LastDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? perPage = null,}) {
  return _then(_LastDataRequest(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
