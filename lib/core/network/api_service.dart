import 'package:dio/dio.dart';
import 'package:foodi_app/core/network/api_exceptions.dart';
import 'package:foodi_app/core/network/dio_client.dart';

class ApiService {
  final DioClient dioClient = DioClient();
  Future<dynamic> get(String endpoint) async {
    try {
      final response = await dioClient.dio.get(endpoint);
      return response.data;
    } on DioException catch (e) {
      return ApiExceptions.handleError(e);
    }
  }

  Future<dynamic> post(String endpoint, Map<String, dynamic> body) async {
    try {
      final response = await dioClient.dio.post(endpoint, data: body);
      return response.data;
    } on DioException catch (e) {
      return ApiExceptions.handleError(e);
    }
  }

  Future<dynamic> put(String endpoint, Map<String, dynamic> body) async {
    try {
      final response = await dioClient.dio.put(endpoint, data: body);
      return response.data;
    } on DioException catch (e) {
      return ApiExceptions.handleError(e);
    }
  }

  Future<dynamic> delete(String endpoint, Map<String, dynamic> body) async {
    try {
      final response = await dioClient.dio.delete(endpoint, data: body);
      return response.data;
    } on DioException catch (e) {
      return ApiExceptions.handleError(e);
    }
  }
}
