import '../../../../core/common/base/mixin/api_error_handler_mixin.dart';
import '../../../../core/services/auth_service.dart';
import '../../../../core/utilities/typedef.dart';
import '../../domain/entities/user.dart';

const kCreateUserEndpoint = '/users';
const kGetUsersEndpoint = '/users';
const kLoginEndpoint = '/auth/login';

class AuthRemoteDataSource with ApiHandlerMixin {
  AuthRemoteDataSource(this.authService);

  final AuthService authService;

  ResultFuture<User> loginWithUsernamePassword({
    required String username,
    required String password,
  }) {
    final data = {
      'username': username,
      'password': password,
    };
    return request(authService.loginUser(data));
  }

  ResultFuture<User> signUpWithEmailPassword({
    required String username,
    required String password,
  }) {
    return request(
      authService.registerUser(
        {
          'username': username,
          'password': password,
        },
      ),
    );
  }
}
