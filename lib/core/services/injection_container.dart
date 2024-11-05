import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../features/auth/data/datasource/auth_local_data_source.dart';
import '../../features/auth/data/datasource/auth_remote_data_source.dart';
import '../../features/auth/data/repositories/authentication_repository_impl.dart';
import '../../features/auth/domain/repositories/authentication_repository.dart';
import '../../features/auth/domain/usecases/auth_check.dart';
import '../../features/auth/domain/usecases/auth_login.dart';
import '../../features/auth/domain/usecases/auth_logout.dart';
import '../../features/auth/domain/usecases/auth_sign_up.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/users/data/datasource/user_remote_data_source.dart';
import '../../features/users/data/repositories/user_repository_impl.dart';
import '../../features/users/domain/repositories/user_repository.dart';
import '../../features/users/domain/usecases/get_users.dart';
import '../common/app_user/app_user_cubit.dart';
import '../common/common/common_bloc.dart';
import '../config.dart';
import '../network/connection_checker.dart';
import '../utilities/preferences.dart';
import 'auth_service.dart';
import 'user_service.dart';

/// GetIt instance for dependency injection.
final getIt = GetIt.instance;

/// Connection timeout for API requests.
const connectTimeout = Duration(seconds: 10);

/// Receive timeout for API requests.
const receiveTimeout = Duration(seconds: 10);

/// Send timeout for API requests.
const sendTimeout = Duration(seconds: 10);

/// Dio instance for API requests.
final Dio dio = Dio(
  BaseOptions(
    baseUrl: Configs.baseUrl,
    connectTimeout: connectTimeout,
    receiveTimeout: receiveTimeout,
    sendTimeout: sendTimeout,
  ),
)..interceptors.addAll(
    [
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: false,
        responseBody: false,
        request: false,
        logPrint: (log) => Logger.log(log.toString(), tag: 'API'),
      ),
    ],
  );

/// Initializes the dependency injection container.
void initInjection() {
  registerExternal();
  registerBlocs();
  registerAuthUseCases();
  registerRepositories();
  registerUserManagement();
}

/// Registers all blocs in the dependency injection container.
void registerBlocs() {
  getIt
    ..registerLazySingleton(() => CommonBloc())
    ..registerLazySingleton(() => AppUserCubit())
    ..registerLazySingleton(
      () => AuthBloc(
        authSignUp: getIt(),
        authLogin: getIt(),
        authLogout: getIt(),
        authCheck: getIt(),
        appUserCubit: getIt(),
      ),
    );
}

/// Registers all use cases in the dependency injection container.
void registerAuthUseCases() {
  getIt
    ..registerLazySingleton(() => AuthSignUp(getIt()))
    ..registerLazySingleton(() => AuthLogin(getIt()))
    ..registerLazySingleton(() => AuthLogout(getIt()))
    ..registerLazySingleton(() => AuthCheck(getIt()));
}

/// Registers all repositories in the dependency injection container.
void registerRepositories() {
  getIt
    ..registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(
        getIt<AuthRemoteDataSource>(),
        getIt<AuthLocalDataSource>(),
        getIt<ConnectionChecker>(),
      ),
    )
    ..registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSource(getIt<AuthService>()),
    )
    ..registerLazySingleton<AuthLocalDataSource>(
      () => const AuthLocalDataSource(),
    );
}

/// Registers all external dependencies in the dependency injection container.
void registerExternal() {
  getIt
    ..registerLazySingleton(() => secureStorage)
    ..registerLazySingleton(() => dio)
    ..registerLazySingleton(() => AuthService(dio))
    ..registerLazySingleton(() => UserService(dio))
    ..registerLazySingleton(() => InternetConnection())
    ..registerLazySingleton<ConnectionChecker>(
      () => ConnectionCheckerImpl(getIt()),
    );
}

/// Registers all user management dependencies in the dependency injection container.
void registerUserManagement() {
  getIt
    ..registerLazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSource(getIt<UserService>()),
    )
    ..registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(getIt<UserRemoteDataSource>()),
    )
    ..registerLazySingleton(() => GetUsers(getIt<UserRepository>()));
}
