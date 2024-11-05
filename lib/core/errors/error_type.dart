import 'package:dio/dio.dart';

enum ApiErrorType {
  noInternet(0, 'No Internet'),
  unauthorized(401, 'Unauthorized'),
  badRequest(400, 'Bad Request'),
  forbidden(403, 'Forbidden'),
  connectionTimeout(408, 'Connection Timeout'),
  sendTimeout(408, 'Send Timeout'),
  receiveTimeout(408, 'Receive Timeout'),
  badGateway(502, 'Bad Gateway'),
  serviceUnavailable(503, 'Service Unavailable'),
  cancel(499, 'Request Cancelled'),
  tooManyRequests(429, 'Too Many Requests'),
  contentNotAcceptable(422, 'Content Not Acceptable'),
  notFound(404, 'Not Found'),
  serverError(500, 'Internal Server Error'),
  unknown(520, 'Unknown Error'),
  response(200, 'Success');

  factory ApiErrorType.fromDioExceptionType(DioException exception) {
    final statusCode = exception.response?.statusCode;
    if (statusCode != null) {
      return ApiErrorType.values.firstWhere(
        (e) => e.statusCode == statusCode,
        orElse: () => unknown,
      );
    }
    final type = exception.type;
    switch (type) {
      case DioExceptionType.connectionTimeout:
        return connectionTimeout;
      case DioExceptionType.sendTimeout:
        return sendTimeout;
      case DioExceptionType.receiveTimeout:
        return receiveTimeout;
      case DioExceptionType.connectionError:
        return connectionTimeout;
      default:
        return unknown;
    }
  }
  const ApiErrorType(this.statusCode, this.message);

  final int statusCode;

  final String message;
}
