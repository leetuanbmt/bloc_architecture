import 'dart:io';

import 'package:dio/dio.dart';

import 'error_type.dart';

class ApiException implements Exception {
  ApiException({
    required this.message,
    this.data,
    this.code,
    this.errorType,
  });

  factory ApiException.noInternet() {
    return ApiException(
      message:
          'No internet connection, please check your connection and try again',
      errorType: ApiErrorType.noInternet,
    );
  }

  factory ApiException.handleError(dynamic exception) {
    /// if the exception is a Response object
    if (exception is Response) {
      final errorType = ApiErrorType.values.firstWhere(
        (e) => e.statusCode == exception.statusCode,
        orElse: () => ApiErrorType.unknown,
      );
      return ApiException(
        message: errorType.name,
        data: exception.data,
        errorType: errorType,
        code: exception.statusCode,
      );
    } else if (exception is DioException) {
      if (exception.error is SocketException) {
        return ApiException.noInternet();
      }
      final errorType = ApiErrorType.fromDioExceptionType(exception);

      return ApiException(
        message: errorType.name,
        errorType: errorType,
        code: exception.response?.statusCode,
        data: exception.response?.data,
      );
    }

    /// if the exception is a String
    return ApiException(
      message: exception.toString(),
      errorType: ApiErrorType.unknown,
    );
  }
  final String message;
  final dynamic data;
  final int? code;
  final ApiErrorType? errorType;

  bool get isResponseError => errorType == ApiErrorType.response;

  @override
  String toString() {
    final StringBuffer sb = StringBuffer();
    sb.write('ApiException: $message ');
    sb.write('StatusCode: $code ');
    sb.write('ErrorType: $errorType ');
    sb.write('Data: $data ');
    return sb.toString();
  }
}
