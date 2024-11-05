import '../../../../core/usecase/usecase.dart';
import '../../../../core/utilities/typedef.dart';
import '../../../auth/domain/entities/user.dart';
import '../repositories/user_repository.dart';

class GetUsers extends UsecaseWithParams<UserListResponse, GetUsersParams> {
  GetUsers(this._repository);
  final UserRepository _repository;

  @override
  ResultFuture<UserListResponse> call(GetUsersParams params) =>
      _repository.getUsers(
        limit: params.limit,
        skip: params.skip,
      );
}

class GetUsersParams {
  GetUsersParams({
    required this.limit,
    required this.skip,
  });
  final int limit;
  final int skip;
}
