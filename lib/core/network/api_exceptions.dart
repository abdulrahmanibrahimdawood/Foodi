import 'package:dio/dio.dart';
import 'package:foodi_app/core/network/api_errors.dart';

class ApiExceptions {
  static ApiErrors handleError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ApiErrors(message: 'Connection Timeout', statusCode: 408);
      case DioExceptionType.connectionError:
        return ApiErrors(message: 'No Internet Connection', statusCode: 503);
      case DioExceptionType.badCertificate:
        return ApiErrors(message: 'Bad Certificate', statusCode: 495);
      case DioExceptionType.cancel:
        return ApiErrors(message: 'Request Cancelled', statusCode: 499);
      case DioExceptionType.unknown:
        return ApiErrors(message: 'Unexpected Error', statusCode: 520);
      default:
        return ApiErrors(message: 'Something went wrong', statusCode: 500);
    }
  }
}
