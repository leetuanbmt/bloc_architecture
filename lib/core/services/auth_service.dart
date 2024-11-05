import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/auth/domain/entities/user.dart';
import '../utilities/typedef.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio, {String? baseUrl}) = _AuthService;

  @POST('/auth/login')
  Future<User> loginUser(@Body() JsonMapping body);

  @POST('/users')
  Future<User> registerUser(@Body() JsonMapping body);
}
