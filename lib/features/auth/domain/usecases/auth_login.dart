import '../../../../core/usecase/usecase.dart';
import '../../../../core/utilities/typedef.dart';
import '../entities/user.dart';
import '../repositories/authentication_repository.dart';

class AuthLogin extends UsecaseWithParams<User, LoginParam> {
  AuthLogin(this._repository);
  final AuthenticationRepository _repository;

  @override
  ResultFuture<User> call(LoginParam params) async {
    return _repository.loginWithUsernamePassword(
      username: params.username,
      password: params.password,
    );
  }
}

class LoginParam {
  const LoginParam({
    required this.username,
    required this.password,
  });
  final String username;
  final String password;
}
