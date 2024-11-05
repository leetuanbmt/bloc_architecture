import '../../../../core/utilities/typedef.dart';
import '../../../auth/domain/entities/user.dart';

abstract class UserRepository {
  const UserRepository();

  ResultFuture<UserListResponse> getUsers({
    int limit = 10,
    int skip = 0,
  });
}
