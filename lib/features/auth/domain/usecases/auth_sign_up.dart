import '../../../../core/usecase/usecase.dart';
import '../../../../core/utilities/typedef.dart';
import '../entities/user.dart';
import '../repositories/authentication_repository.dart';

class AuthSignUp extends UsecaseWithParams<User, SignUpParam> {
  AuthSignUp(this._repository);
  final AuthenticationRepository _repository;

  @override
  ResultFuture<User> call(SignUpParam params) {
    return _repository.signUpWithEmailPassword(
      username: params.username,
      password: params.password,
    );
  }
}

class SignUpParam {
  const SignUpParam({
    required this.username,
    required this.password,
  });
  final String username;
  final String password;
}
