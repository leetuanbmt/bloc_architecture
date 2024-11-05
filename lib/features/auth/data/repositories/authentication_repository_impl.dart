import '../../../../core/errors/exception.dart';
import '../../../../core/network/connection_checker.dart';
import '../../../../core/utilities/typedef.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../datasource/auth_local_data_source.dart';
import '../datasource/auth_remote_data_source.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  const AuthenticationRepositoryImpl(
    this.remoteDataSource,
    this.localDataSource,
    this.connectionChecker,
  );

  final AuthRemoteDataSource remoteDataSource;

  final AuthLocalDataSource localDataSource;

  final ConnectionChecker connectionChecker;

  @override
  Future<void> logout() => localDataSource.remove();

  @override
  ResultFuture<User> loginWithUsernamePassword({
    required String username,
    required String password,
  }) async {
    /// Check if the device is connected to the internet.
    if (!await connectionChecker.isConnected) {
      return Failure(error: ApiException.noInternet());
    }
    final result = await remoteDataSource.loginWithUsernamePassword(
      username: username,
      password: password,
    );

    /// Save the token to local storage if the authentication is successful.
    if (result is Success) {
      final user = result.maybeMap(
        orElse: () => null,
        success: (data) => data.data,
      );
      if (user != null) {
        await localDataSource.saveToken(user);
      }
    }
    return result;
  }

  @override
  Future<User?> authenticated() => localDataSource.authentication();

  @override
  ResultFuture<User> signUpWithEmailPassword({
    required String username,
    required String password,
  }) {
    return remoteDataSource.signUpWithEmailPassword(
      username: username,
      password: password,
    );
  }
}
