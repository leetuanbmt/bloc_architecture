import '../../../../core/usecase/usecase.dart';
import '../entities/user.dart';
import '../repositories/authentication_repository.dart';

class AuthCheck implements UsecaseWithoutFuture<User?> {
  const AuthCheck(this._repository);

  final AuthenticationRepository _repository;

  @override
  Future<User?> call() => _repository.authenticated();
}
