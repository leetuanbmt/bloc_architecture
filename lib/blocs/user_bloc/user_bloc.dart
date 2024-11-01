import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user.dart';
import '../../domain/usecases/get_users.dart';
import '../base/base_bloc.dart';
import '../base/base_event.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

/// Bloc for managing user data.
///
/// This bloc handles fetching user data from the repository.
/// It uses the `GetUsers` usecase to retrieve the data.
class UserBloc extends BaseBloc<UserEvent, UserState> {
  /// Creates a new instance of the `UserBloc`.
  ///
  /// Takes a `GetUsers` usecase as a parameter.
  UserBloc(this.getUsers) : super(const UserState.initial()) {
    on<UserEvent>((event, emit) async {
      await event.when(
        getUser: () async {
          emit(const UserState.loading());
          await _onUserGet(emit);
        },
        loadMore: () async {
          if (onLoading || !data.hasMore) return;
          skip += limit;
          emit(UserState.loadingMore(data));
          await _onUserGet(emit);
        },
        pullRefresh: (completer) async {
          skip = 0;
          emit(UserState.pullRefresh(data));
          await _onUserGet(emit);
          completer.complete();
        },
      );
    });
  }

  /// The number of items to fetch per request.
  int limit = 20;

  /// The number of items to skip for pagination.
  int skip = 0;

  /// Checks if the bloc is currently in a loading state.
  ///
  /// Returns `true` if the bloc is in a loading or loadingMore state, otherwise `false`.
  bool get onLoading => state.maybeWhen(
        orElse: () => false,
        loading: () => true,
        loadingMore: (_) => true,
      );

  /// Retrieves the current user data from the state.
  ///
  /// Returns the current `UserListResponse` if the state is loaded or loadingMore, otherwise an empty `UserListResponse`.
  UserListResponse get data => state.maybeWhen(
        orElse: () => const UserListResponse(users: []),
        loaded: (data) => data,
        loadingMore: (data) => data,
      );

  /// The `GetUsers` usecase used to retrieve user data.
  final GetUsers getUsers;

  /// Handles the `UserEvent.getUser` event.
  ///
  /// Fetches user data from the repository using the `GetUsers` usecase.
  /// Emits a `UserState.loading` state while fetching the data.
  /// Emits a `UserState.loaded` state if the data is fetched successfully.
  /// Emits a `UserState.error` state if an error occurs while fetching the data.
  Future<void> _onUserGet(Emitter<UserState> emit) async {
    final result = await getUsers.call(
      GetUsersParams(limit: limit, skip: skip),
    );

    result.when(
      success: (response) {
        if (skip == 0) {
          emit(UserState.loaded(response));
        } else {
          emit(UserState.loaded(UserListResponse.merge(data, response)));
        }
      },
      failure: (error, _) {
        emit(UserState.error(error.message));
      },
    );
  }
}

/// phrase 1