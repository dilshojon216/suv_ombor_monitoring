// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_theme_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppThemeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppThemeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppThemeState()';
}


}

/// @nodoc
class $AppThemeStateCopyWith<$Res>  {
$AppThemeStateCopyWith(AppThemeState _, $Res Function(AppThemeState) __);
}


/// Adds pattern-matching-related methods to [AppThemeState].
extension AppThemeStatePatterns on AppThemeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Light value)?  light,TResult Function( _Dark value)?  dark,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Light() when light != null:
return light(_that);case _Dark() when dark != null:
return dark(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Light value)  light,required TResult Function( _Dark value)  dark,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Light():
return light(_that);case _Dark():
return dark(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Light value)?  light,TResult? Function( _Dark value)?  dark,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Light() when light != null:
return light(_that);case _Dark() when dark != null:
return dark(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  light,TResult Function()?  dark,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Light() when light != null:
return light();case _Dark() when dark != null:
return dark();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  light,required TResult Function()  dark,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Light():
return light();case _Dark():
return dark();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  light,TResult? Function()?  dark,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Light() when light != null:
return light();case _Dark() when dark != null:
return dark();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AppThemeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppThemeState.initial()';
}


}




/// @nodoc


class _Light implements AppThemeState {
  const _Light();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Light);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppThemeState.light()';
}


}




/// @nodoc


class _Dark implements AppThemeState {
  const _Dark();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dark);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppThemeState.dark()';
}


}




// dart format on
