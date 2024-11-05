import '../../../../core/utilities/typedef.dart';
import '../entities/user.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  ResultFuture<User> signUpWithEmailPassword({
    required String username,
    required String password,
  });

  ResultFuture<User> loginWithUsernamePassword({
    required String username,
    required String password,
  });

  Future<void> logout();

  Future<User?> authenticated();
}
