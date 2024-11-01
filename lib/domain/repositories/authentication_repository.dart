import '../../core/utilities/typedef.dart';
import '../entities/user.dart';

/// Abstract class for authentication repository.
abstract class AuthenticationRepository {
  /// Default constructor.
  const AuthenticationRepository();

  /// Registers a new user.
  ///
  /// [firstName] The first name of the user.
  /// [lastName] The last name of the user.
  /// [email] The email of the user.
  /// [password] The password of the user.
  ///
  /// Returns a [ResultVoid] object.
  /// **Example:**
  /// ```dart
  /// final authenticationRepository = AuthenticationRepository();
  /// final result = authenticationRepository.register(
  ///   firstName: 'John',
  ///   lastName: 'Doe',
  ///   email: 'john.doe@example.com',
  ///   password: 'password123',
  /// );
  /// ```
  ResultVoid register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });

  /// Authenticates a user.
  ///
  /// [username] The username of the user.
  /// [password] The password of the user.
  /// **Example:**
  /// ```dart
  /// final authenticationRepository = AuthenticationRepository();
  /// final result = authenticationRepository.authenticate(
  ///  username: 'one',
  ///  password: 'password123',
  /// );
  /// Returns a [ResultFuture<User>] object.
  ResultFuture<User> authenticate({
    required String username,
    required String password,
  });

  /// Logs out the current user.
  ///
  /// Returns a [Future<void>] object.
  Future<void> logout();
}
