import '../../../../core/utilities/typedef.dart';
import '../../../auth/domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasource/user_remote_data_source.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(this.remoteDataSource);
  final UserRemoteDataSource remoteDataSource;

  @override
  ResultFuture<UserListResponse> getUsers({
    int limit = 10,
    int skip = 0,
  }) =>
      remoteDataSource.getUsers(limit: limit, skip: skip);
}
