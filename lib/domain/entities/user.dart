import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/utilities/typedef.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    int? id,
    String? username,
    String? email,
    String? firstName,
    String? lastName,
    String? gender,
    String? image,
    String? accessToken,
    String? refreshToken,
    String? birthDate,
    String? phone,
  }) = _User;

  factory User.fromJson(JsonMapping json) => _$UserFromJson(json);

  String get name => '$firstName $lastName';
}

@freezed
class UserListResponse with _$UserListResponse {
  const UserListResponse._();
  const factory UserListResponse({
    required List<User> users,
    @Default(0) int total,
    @Default(0) int skip,
    @Default(0) int limit,
  }) = _UserListResponse;

  factory UserListResponse.fromJson(JsonMapping json) =>
      _$UserListResponseFromJson(json);

  factory UserListResponse.merge(
    UserListResponse oldData,
    UserListResponse newData,
  ) {
    return UserListResponse(
      users: [...oldData.users, ...newData.users],
      total: newData.total,
      skip: newData.skip,
      limit: newData.limit,
    );
  }

  bool get hasMore => users.length < total;
}
