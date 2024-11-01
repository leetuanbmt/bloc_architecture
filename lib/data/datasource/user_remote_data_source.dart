import '../../blocs/base/mixin/api_error_handler_mixin.dart';
import '../../core/services/user_service.dart';
import '../../core/utilities/typedef.dart';
import '../../domain/entities/user.dart';

class UserRemoteDataSource with ApiHandlerMixin {
  UserRemoteDataSource(this.userService);
  final UserService userService;

  ResultFuture<UserListResponse> getUsers({
    int limit = 10,
    int skip = 0,
  }) =>
      request(userService.getUsers(limit: limit, skip: skip));

  ResultVoid createUser(User newUser) {
    return request(userService.createUser(newUser.toJson()));
  }
}
