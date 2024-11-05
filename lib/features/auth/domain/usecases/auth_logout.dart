import '../../../../core/usecase/usecase.dart';
import '../repositories/authentication_repository.dart';

class AuthLogout extends UsecaseWithoutFuture<void> {
  AuthLogout(this._repository);
  final AuthenticationRepository _repository;

  @override
  Future<void> call() => _repository.logout();
}
