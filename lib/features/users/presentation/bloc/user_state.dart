part of 'user_bloc.dart';

sealed class UserState extends BaseState {
  const UserState();
}

class UserStateInitial extends UserState {
  const UserStateInitial();
}

class UserStateLoading extends UserState {
  const UserStateLoading();
}

class UserStateLoaded extends UserState {
  const UserStateLoaded(this.data);

  final UserListResponse data;

  @override
  List<Object> get props => [data];
}

class UserStateError extends UserState {
  const UserStateError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}

class UserStatePullRefresh extends UserState {
  const UserStatePullRefresh();
}

class UserStateLoadMore extends UserState {
  const UserStateLoadMore(this.data);
  final UserListResponse data;
}




// class UserState with _$UserState {
//   const UserState._();
//   const factory UserState.initial() = _UserStateInitial;
//   const factory UserState.loading() = _UserStateLoading;
//   const factory UserState.loaded(UserListResponse data) = _UserStateLoaded;
//   const factory UserState.error(String message) = _UserStateError;
//   const factory UserState.pullRefresh(UserListResponse data) =
//       _UserStatePullRefresh;

//   const factory UserState.loadingMore(UserListResponse data) =
//       _UserStateLoadingMore;

//   bool get isLoaded => maybeWhen(
//         orElse: () => false,
//         loaded: (_) => true,
//       );

//   bool get isLoading => maybeWhen(
//         orElse: () => false,
//         loading: () => true,
//         loadingMore: (_) => true,
//       );

//   bool get isLoadMore => maybeWhen(
//         orElse: () => false,
//         loadingMore: (_) => true,
//       );

//   List<User> get users => maybeWhen(
//         orElse: () => [],
//         loaded: (data) => data.users,
//       );

//   bool get isError => maybeWhen(
//         orElse: () => false,
//         error: (_) => true,
//       );
// }
