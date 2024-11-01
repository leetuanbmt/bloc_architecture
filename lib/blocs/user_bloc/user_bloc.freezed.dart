// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() loadMore,
    required TResult Function(Completer<void> completer) pullRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? loadMore,
    TResult? Function(Completer<void> completer)? pullRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? loadMore,
    TResult Function(Completer<void> completer)? pullRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_PullRefresh value) pullRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_PullRefresh value)? pullRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_PullRefresh value)? pullRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserImpl implements _GetUser {
  const _$GetUserImpl();

  @override
  String toString() {
    return 'UserEvent.getUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() loadMore,
    required TResult Function(Completer<void> completer) pullRefresh,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? loadMore,
    TResult? Function(Completer<void> completer)? pullRefresh,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? loadMore,
    TResult Function(Completer<void> completer)? pullRefresh,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_PullRefresh value) pullRefresh,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_PullRefresh value)? pullRefresh,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_PullRefresh value)? pullRefresh,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements UserEvent {
  const factory _GetUser() = _$GetUserImpl;
}

/// @nodoc
abstract class _$$LoadMoreImplCopyWith<$Res> {
  factory _$$LoadMoreImplCopyWith(
          _$LoadMoreImpl value, $Res Function(_$LoadMoreImpl) then) =
      __$$LoadMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$LoadMoreImpl>
    implements _$$LoadMoreImplCopyWith<$Res> {
  __$$LoadMoreImplCopyWithImpl(
      _$LoadMoreImpl _value, $Res Function(_$LoadMoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreImpl implements _LoadMore {
  const _$LoadMoreImpl();

  @override
  String toString() {
    return 'UserEvent.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() loadMore,
    required TResult Function(Completer<void> completer) pullRefresh,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? loadMore,
    TResult? Function(Completer<void> completer)? pullRefresh,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? loadMore,
    TResult Function(Completer<void> completer)? pullRefresh,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_PullRefresh value) pullRefresh,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_PullRefresh value)? pullRefresh,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_PullRefresh value)? pullRefresh,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements UserEvent {
  const factory _LoadMore() = _$LoadMoreImpl;
}

/// @nodoc
abstract class _$$PullRefreshImplCopyWith<$Res> {
  factory _$$PullRefreshImplCopyWith(
          _$PullRefreshImpl value, $Res Function(_$PullRefreshImpl) then) =
      __$$PullRefreshImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Completer<void> completer});
}

/// @nodoc
class __$$PullRefreshImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$PullRefreshImpl>
    implements _$$PullRefreshImplCopyWith<$Res> {
  __$$PullRefreshImplCopyWithImpl(
      _$PullRefreshImpl _value, $Res Function(_$PullRefreshImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completer = null,
  }) {
    return _then(_$PullRefreshImpl(
      null == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<void>,
    ));
  }
}

/// @nodoc

class _$PullRefreshImpl implements _PullRefresh {
  const _$PullRefreshImpl(this.completer);

  @override
  final Completer<void> completer;

  @override
  String toString() {
    return 'UserEvent.pullRefresh(completer: $completer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PullRefreshImpl &&
            (identical(other.completer, completer) ||
                other.completer == completer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, completer);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PullRefreshImplCopyWith<_$PullRefreshImpl> get copyWith =>
      __$$PullRefreshImplCopyWithImpl<_$PullRefreshImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() loadMore,
    required TResult Function(Completer<void> completer) pullRefresh,
  }) {
    return pullRefresh(completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? loadMore,
    TResult? Function(Completer<void> completer)? pullRefresh,
  }) {
    return pullRefresh?.call(completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? loadMore,
    TResult Function(Completer<void> completer)? pullRefresh,
    required TResult orElse(),
  }) {
    if (pullRefresh != null) {
      return pullRefresh(completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_PullRefresh value) pullRefresh,
  }) {
    return pullRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_PullRefresh value)? pullRefresh,
  }) {
    return pullRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_PullRefresh value)? pullRefresh,
    required TResult orElse(),
  }) {
    if (pullRefresh != null) {
      return pullRefresh(this);
    }
    return orElse();
  }
}

abstract class _PullRefresh implements UserEvent {
  const factory _PullRefresh(final Completer<void> completer) =
      _$PullRefreshImpl;

  Completer<void> get completer;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PullRefreshImplCopyWith<_$PullRefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserListResponse data) loaded,
    required TResult Function(String message) error,
    required TResult Function(UserListResponse data) pullRefresh,
    required TResult Function(UserListResponse data) loadingMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListResponse data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(UserListResponse data)? pullRefresh,
    TResult? Function(UserListResponse data)? loadingMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListResponse data)? loaded,
    TResult Function(String message)? error,
    TResult Function(UserListResponse data)? pullRefresh,
    TResult Function(UserListResponse data)? loadingMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateLoaded value) loaded,
    required TResult Function(_UserStateError value) error,
    required TResult Function(_UserStatePullRefresh value) pullRefresh,
    required TResult Function(_UserStateLoadingMore value) loadingMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateLoaded value)? loaded,
    TResult? Function(_UserStateError value)? error,
    TResult? Function(_UserStatePullRefresh value)? pullRefresh,
    TResult? Function(_UserStateLoadingMore value)? loadingMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateLoaded value)? loaded,
    TResult Function(_UserStateError value)? error,
    TResult Function(_UserStatePullRefresh value)? pullRefresh,
    TResult Function(_UserStateLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserStateInitialImplCopyWith<$Res> {
  factory _$$UserStateInitialImplCopyWith(_$UserStateInitialImpl value,
          $Res Function(_$UserStateInitialImpl) then) =
      __$$UserStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateInitialImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateInitialImpl>
    implements _$$UserStateInitialImplCopyWith<$Res> {
  __$$UserStateInitialImplCopyWithImpl(_$UserStateInitialImpl _value,
      $Res Function(_$UserStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserStateInitialImpl extends _UserStateInitial {
  const _$UserStateInitialImpl() : super._();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserListResponse data) loaded,
    required TResult Function(String message) error,
    required TResult Function(UserListResponse data) pullRefresh,
    required TResult Function(UserListResponse data) loadingMore,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListResponse data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(UserListResponse data)? pullRefresh,
    TResult? Function(UserListResponse data)? loadingMore,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListResponse data)? loaded,
    TResult Function(String message)? error,
    TResult Function(UserListResponse data)? pullRefresh,
    TResult Function(UserListResponse data)? loadingMore,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateLoaded value) loaded,
    required TResult Function(_UserStateError value) error,
    required TResult Function(_UserStatePullRefresh value) pullRefresh,
    required TResult Function(_UserStateLoadingMore value) loadingMore,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateLoaded value)? loaded,
    TResult? Function(_UserStateError value)? error,
    TResult? Function(_UserStatePullRefresh value)? pullRefresh,
    TResult? Function(_UserStateLoadingMore value)? loadingMore,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateLoaded value)? loaded,
    TResult Function(_UserStateError value)? error,
    TResult Function(_UserStatePullRefresh value)? pullRefresh,
    TResult Function(_UserStateLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserStateInitial extends UserState {
  const factory _UserStateInitial() = _$UserStateInitialImpl;
  const _UserStateInitial._() : super._();
}

/// @nodoc
abstract class _$$UserStateLoadingImplCopyWith<$Res> {
  factory _$$UserStateLoadingImplCopyWith(_$UserStateLoadingImpl value,
          $Res Function(_$UserStateLoadingImpl) then) =
      __$$UserStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateLoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateLoadingImpl>
    implements _$$UserStateLoadingImplCopyWith<$Res> {
  __$$UserStateLoadingImplCopyWithImpl(_$UserStateLoadingImpl _value,
      $Res Function(_$UserStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserStateLoadingImpl extends _UserStateLoading {
  const _$UserStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserListResponse data) loaded,
    required TResult Function(String message) error,
    required TResult Function(UserListResponse data) pullRefresh,
    required TResult Function(UserListResponse data) loadingMore,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListResponse data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(UserListResponse data)? pullRefresh,
    TResult? Function(UserListResponse data)? loadingMore,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListResponse data)? loaded,
    TResult Function(String message)? error,
    TResult Function(UserListResponse data)? pullRefresh,
    TResult Function(UserListResponse data)? loadingMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateLoaded value) loaded,
    required TResult Function(_UserStateError value) error,
    required TResult Function(_UserStatePullRefresh value) pullRefresh,
    required TResult Function(_UserStateLoadingMore value) loadingMore,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateLoaded value)? loaded,
    TResult? Function(_UserStateError value)? error,
    TResult? Function(_UserStatePullRefresh value)? pullRefresh,
    TResult? Function(_UserStateLoadingMore value)? loadingMore,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateLoaded value)? loaded,
    TResult Function(_UserStateError value)? error,
    TResult Function(_UserStatePullRefresh value)? pullRefresh,
    TResult Function(_UserStateLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserStateLoading extends UserState {
  const factory _UserStateLoading() = _$UserStateLoadingImpl;
  const _UserStateLoading._() : super._();
}

/// @nodoc
abstract class _$$UserStateLoadedImplCopyWith<$Res> {
  factory _$$UserStateLoadedImplCopyWith(_$UserStateLoadedImpl value,
          $Res Function(_$UserStateLoadedImpl) then) =
      __$$UserStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserListResponse data});

  $UserListResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserStateLoadedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateLoadedImpl>
    implements _$$UserStateLoadedImplCopyWith<$Res> {
  __$$UserStateLoadedImplCopyWithImpl(
      _$UserStateLoadedImpl _value, $Res Function(_$UserStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UserStateLoadedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserListResponse,
    ));
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserListResponseCopyWith<$Res> get data {
    return $UserListResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$UserStateLoadedImpl extends _UserStateLoaded {
  const _$UserStateLoadedImpl(this.data) : super._();

  @override
  final UserListResponse data;

  @override
  String toString() {
    return 'UserState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateLoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateLoadedImplCopyWith<_$UserStateLoadedImpl> get copyWith =>
      __$$UserStateLoadedImplCopyWithImpl<_$UserStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserListResponse data) loaded,
    required TResult Function(String message) error,
    required TResult Function(UserListResponse data) pullRefresh,
    required TResult Function(UserListResponse data) loadingMore,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListResponse data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(UserListResponse data)? pullRefresh,
    TResult? Function(UserListResponse data)? loadingMore,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListResponse data)? loaded,
    TResult Function(String message)? error,
    TResult Function(UserListResponse data)? pullRefresh,
    TResult Function(UserListResponse data)? loadingMore,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateLoaded value) loaded,
    required TResult Function(_UserStateError value) error,
    required TResult Function(_UserStatePullRefresh value) pullRefresh,
    required TResult Function(_UserStateLoadingMore value) loadingMore,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateLoaded value)? loaded,
    TResult? Function(_UserStateError value)? error,
    TResult? Function(_UserStatePullRefresh value)? pullRefresh,
    TResult? Function(_UserStateLoadingMore value)? loadingMore,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateLoaded value)? loaded,
    TResult Function(_UserStateError value)? error,
    TResult Function(_UserStatePullRefresh value)? pullRefresh,
    TResult Function(_UserStateLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _UserStateLoaded extends UserState {
  const factory _UserStateLoaded(final UserListResponse data) =
      _$UserStateLoadedImpl;
  const _UserStateLoaded._() : super._();

  UserListResponse get data;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateLoadedImplCopyWith<_$UserStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStateErrorImplCopyWith<$Res> {
  factory _$$UserStateErrorImplCopyWith(_$UserStateErrorImpl value,
          $Res Function(_$UserStateErrorImpl) then) =
      __$$UserStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UserStateErrorImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateErrorImpl>
    implements _$$UserStateErrorImplCopyWith<$Res> {
  __$$UserStateErrorImplCopyWithImpl(
      _$UserStateErrorImpl _value, $Res Function(_$UserStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UserStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserStateErrorImpl extends _UserStateError {
  const _$UserStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateErrorImplCopyWith<_$UserStateErrorImpl> get copyWith =>
      __$$UserStateErrorImplCopyWithImpl<_$UserStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserListResponse data) loaded,
    required TResult Function(String message) error,
    required TResult Function(UserListResponse data) pullRefresh,
    required TResult Function(UserListResponse data) loadingMore,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListResponse data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(UserListResponse data)? pullRefresh,
    TResult? Function(UserListResponse data)? loadingMore,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListResponse data)? loaded,
    TResult Function(String message)? error,
    TResult Function(UserListResponse data)? pullRefresh,
    TResult Function(UserListResponse data)? loadingMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateLoaded value) loaded,
    required TResult Function(_UserStateError value) error,
    required TResult Function(_UserStatePullRefresh value) pullRefresh,
    required TResult Function(_UserStateLoadingMore value) loadingMore,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateLoaded value)? loaded,
    TResult? Function(_UserStateError value)? error,
    TResult? Function(_UserStatePullRefresh value)? pullRefresh,
    TResult? Function(_UserStateLoadingMore value)? loadingMore,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateLoaded value)? loaded,
    TResult Function(_UserStateError value)? error,
    TResult Function(_UserStatePullRefresh value)? pullRefresh,
    TResult Function(_UserStateLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UserStateError extends UserState {
  const factory _UserStateError(final String message) = _$UserStateErrorImpl;
  const _UserStateError._() : super._();

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateErrorImplCopyWith<_$UserStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStatePullRefreshImplCopyWith<$Res> {
  factory _$$UserStatePullRefreshImplCopyWith(_$UserStatePullRefreshImpl value,
          $Res Function(_$UserStatePullRefreshImpl) then) =
      __$$UserStatePullRefreshImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserListResponse data});

  $UserListResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserStatePullRefreshImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStatePullRefreshImpl>
    implements _$$UserStatePullRefreshImplCopyWith<$Res> {
  __$$UserStatePullRefreshImplCopyWithImpl(_$UserStatePullRefreshImpl _value,
      $Res Function(_$UserStatePullRefreshImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UserStatePullRefreshImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserListResponse,
    ));
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserListResponseCopyWith<$Res> get data {
    return $UserListResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$UserStatePullRefreshImpl extends _UserStatePullRefresh {
  const _$UserStatePullRefreshImpl(this.data) : super._();

  @override
  final UserListResponse data;

  @override
  String toString() {
    return 'UserState.pullRefresh(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatePullRefreshImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatePullRefreshImplCopyWith<_$UserStatePullRefreshImpl>
      get copyWith =>
          __$$UserStatePullRefreshImplCopyWithImpl<_$UserStatePullRefreshImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserListResponse data) loaded,
    required TResult Function(String message) error,
    required TResult Function(UserListResponse data) pullRefresh,
    required TResult Function(UserListResponse data) loadingMore,
  }) {
    return pullRefresh(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListResponse data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(UserListResponse data)? pullRefresh,
    TResult? Function(UserListResponse data)? loadingMore,
  }) {
    return pullRefresh?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListResponse data)? loaded,
    TResult Function(String message)? error,
    TResult Function(UserListResponse data)? pullRefresh,
    TResult Function(UserListResponse data)? loadingMore,
    required TResult orElse(),
  }) {
    if (pullRefresh != null) {
      return pullRefresh(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateLoaded value) loaded,
    required TResult Function(_UserStateError value) error,
    required TResult Function(_UserStatePullRefresh value) pullRefresh,
    required TResult Function(_UserStateLoadingMore value) loadingMore,
  }) {
    return pullRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateLoaded value)? loaded,
    TResult? Function(_UserStateError value)? error,
    TResult? Function(_UserStatePullRefresh value)? pullRefresh,
    TResult? Function(_UserStateLoadingMore value)? loadingMore,
  }) {
    return pullRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateLoaded value)? loaded,
    TResult Function(_UserStateError value)? error,
    TResult Function(_UserStatePullRefresh value)? pullRefresh,
    TResult Function(_UserStateLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (pullRefresh != null) {
      return pullRefresh(this);
    }
    return orElse();
  }
}

abstract class _UserStatePullRefresh extends UserState {
  const factory _UserStatePullRefresh(final UserListResponse data) =
      _$UserStatePullRefreshImpl;
  const _UserStatePullRefresh._() : super._();

  UserListResponse get data;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStatePullRefreshImplCopyWith<_$UserStatePullRefreshImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStateLoadingMoreImplCopyWith<$Res> {
  factory _$$UserStateLoadingMoreImplCopyWith(_$UserStateLoadingMoreImpl value,
          $Res Function(_$UserStateLoadingMoreImpl) then) =
      __$$UserStateLoadingMoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserListResponse data});

  $UserListResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserStateLoadingMoreImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateLoadingMoreImpl>
    implements _$$UserStateLoadingMoreImplCopyWith<$Res> {
  __$$UserStateLoadingMoreImplCopyWithImpl(_$UserStateLoadingMoreImpl _value,
      $Res Function(_$UserStateLoadingMoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UserStateLoadingMoreImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserListResponse,
    ));
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserListResponseCopyWith<$Res> get data {
    return $UserListResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$UserStateLoadingMoreImpl extends _UserStateLoadingMore {
  const _$UserStateLoadingMoreImpl(this.data) : super._();

  @override
  final UserListResponse data;

  @override
  String toString() {
    return 'UserState.loadingMore(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateLoadingMoreImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateLoadingMoreImplCopyWith<_$UserStateLoadingMoreImpl>
      get copyWith =>
          __$$UserStateLoadingMoreImplCopyWithImpl<_$UserStateLoadingMoreImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserListResponse data) loaded,
    required TResult Function(String message) error,
    required TResult Function(UserListResponse data) pullRefresh,
    required TResult Function(UserListResponse data) loadingMore,
  }) {
    return loadingMore(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListResponse data)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(UserListResponse data)? pullRefresh,
    TResult? Function(UserListResponse data)? loadingMore,
  }) {
    return loadingMore?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListResponse data)? loaded,
    TResult Function(String message)? error,
    TResult Function(UserListResponse data)? pullRefresh,
    TResult Function(UserListResponse data)? loadingMore,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateLoaded value) loaded,
    required TResult Function(_UserStateError value) error,
    required TResult Function(_UserStatePullRefresh value) pullRefresh,
    required TResult Function(_UserStateLoadingMore value) loadingMore,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateLoaded value)? loaded,
    TResult? Function(_UserStateError value)? error,
    TResult? Function(_UserStatePullRefresh value)? pullRefresh,
    TResult? Function(_UserStateLoadingMore value)? loadingMore,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateLoaded value)? loaded,
    TResult Function(_UserStateError value)? error,
    TResult Function(_UserStatePullRefresh value)? pullRefresh,
    TResult Function(_UserStateLoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _UserStateLoadingMore extends UserState {
  const factory _UserStateLoadingMore(final UserListResponse data) =
      _$UserStateLoadingMoreImpl;
  const _UserStateLoadingMore._() : super._();

  UserListResponse get data;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateLoadingMoreImplCopyWith<_$UserStateLoadingMoreImpl>
      get copyWith => throw _privateConstructorUsedError;
}
