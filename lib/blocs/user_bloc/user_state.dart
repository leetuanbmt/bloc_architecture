part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const UserState._();
  const factory UserState.initial() = _UserStateInitial;
  const factory UserState.loading() = _UserStateLoading;
  const factory UserState.loaded(UserListResponse data) = _UserStateLoaded;
  const factory UserState.error(String message) = _UserStateError;
  const factory UserState.pullRefresh(UserListResponse data) =
      _UserStatePullRefresh;

  const factory UserState.loadingMore(UserListResponse data) =
      _UserStateLoadingMore;

  bool get isLoaded => maybeWhen(
        orElse: () => false,
        loaded: (_) => true,
      );

  bool get isLoading => maybeWhen(
        orElse: () => false,
        loading: () => true,
        loadingMore: (_) => true,
      );

  bool get isLoadMore => maybeWhen(
        orElse: () => false,
        loadingMore: (_) => true,
      );

  List<User> get users => maybeWhen(
        orElse: () => [],
        loaded: (data) => data.users,
      );

  bool get isError => maybeWhen(
        orElse: () => false,
        error: (_) => true,
      );
}
