// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LastDataResponse {

 int get totalDocs; int get totalPages; int get currentPage; int? get nextPage; List<LastData> get data;
/// Create a copy of LastDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastDataResponseCopyWith<LastDataResponse> get copyWith => _$LastDataResponseCopyWithImpl<LastDataResponse>(this as LastDataResponse, _$identity);

  /// Serializes this LastDataResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastDataResponse&&(identical(other.totalDocs, totalDocs) || other.totalDocs == totalDocs)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalDocs,totalPages,currentPage,nextPage,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LastDataResponse(totalDocs: $totalDocs, totalPages: $totalPages, currentPage: $currentPage, nextPage: $nextPage, data: $data)';
}


}

/// @nodoc
abstract mixin class $LastDataResponseCopyWith<$Res>  {
  factory $LastDataResponseCopyWith(LastDataResponse value, $Res Function(LastDataResponse) _then) = _$LastDataResponseCopyWithImpl;
@useResult
$Res call({
 int totalDocs, int totalPages, int currentPage, int? nextPage, List<LastData> data
});




}
/// @nodoc
class _$LastDataResponseCopyWithImpl<$Res>
    implements $LastDataResponseCopyWith<$Res> {
  _$LastDataResponseCopyWithImpl(this._self, this._then);

  final LastDataResponse _self;
  final $Res Function(LastDataResponse) _then;

/// Create a copy of LastDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalDocs = null,Object? totalPages = null,Object? currentPage = null,Object? nextPage = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
totalDocs: null == totalDocs ? _self.totalDocs : totalDocs // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<LastData>,
  ));
}

}


/// Adds pattern-matching-related methods to [LastDataResponse].
extension LastDataResponsePatterns on LastDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _LastDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LastDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalDocs,  int totalPages,  int currentPage,  int? nextPage,  List<LastData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastDataResponse() when $default != null:
return $default(_that.totalDocs,_that.totalPages,_that.currentPage,_that.nextPage,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalDocs,  int totalPages,  int currentPage,  int? nextPage,  List<LastData> data)  $default,) {final _that = this;
switch (_that) {
case _LastDataResponse():
return $default(_that.totalDocs,_that.totalPages,_that.currentPage,_that.nextPage,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalDocs,  int totalPages,  int currentPage,  int? nextPage,  List<LastData> data)?  $default,) {final _that = this;
switch (_that) {
case _LastDataResponse() when $default != null:
return $default(_that.totalDocs,_that.totalPages,_that.currentPage,_that.nextPage,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LastDataResponse implements LastDataResponse {
   _LastDataResponse({required this.totalDocs, required this.totalPages, required this.currentPage, required this.nextPage, required final  List<LastData> data}): _data = data;
  factory _LastDataResponse.fromJson(Map<String, dynamic> json) => _$LastDataResponseFromJson(json);

@override final  int totalDocs;
@override final  int totalPages;
@override final  int currentPage;
@override final  int? nextPage;
 final  List<LastData> _data;
@override List<LastData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of LastDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastDataResponseCopyWith<_LastDataResponse> get copyWith => __$LastDataResponseCopyWithImpl<_LastDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LastDataResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastDataResponse&&(identical(other.totalDocs, totalDocs) || other.totalDocs == totalDocs)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalDocs,totalPages,currentPage,nextPage,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'LastDataResponse(totalDocs: $totalDocs, totalPages: $totalPages, currentPage: $currentPage, nextPage: $nextPage, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LastDataResponseCopyWith<$Res> implements $LastDataResponseCopyWith<$Res> {
  factory _$LastDataResponseCopyWith(_LastDataResponse value, $Res Function(_LastDataResponse) _then) = __$LastDataResponseCopyWithImpl;
@override @useResult
$Res call({
 int totalDocs, int totalPages, int currentPage, int? nextPage, List<LastData> data
});




}
/// @nodoc
class __$LastDataResponseCopyWithImpl<$Res>
    implements _$LastDataResponseCopyWith<$Res> {
  __$LastDataResponseCopyWithImpl(this._self, this._then);

  final _LastDataResponse _self;
  final $Res Function(_LastDataResponse) _then;

/// Create a copy of LastDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalDocs = null,Object? totalPages = null,Object? currentPage = null,Object? nextPage = freezed,Object? data = null,}) {
  return _then(_LastDataResponse(
totalDocs: null == totalDocs ? _self.totalDocs : totalDocs // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<LastData>,
  ));
}


}

// dart format on
