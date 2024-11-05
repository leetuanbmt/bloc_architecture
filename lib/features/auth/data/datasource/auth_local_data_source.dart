import 'dart:async';

import '../../../../core/common/base/mixin/persisted_mixin.dart';
import '../../domain/entities/user.dart';

class AuthLocalDataSource with PersistedStateMixin<User> {
  const AuthLocalDataSource();

  Future<User?> authentication() => load();

  Future<void> saveToken(User user) => save(user.toJson());

  Future<void> unauthenticated() => remove();

  @override
  String get cacheKey => 'ff_authentications_state';

  @override
  FutureOr<User> fromJson(Map<String, dynamic> json) => User.fromJson(json);
}
