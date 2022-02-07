import 'package:get/get.dart' hide Response;
import 'package:nozom_pda/domain/core/interfaces/http_connect.interface.dart';
import 'package:nozom_pda/domain/core/interfaces/response.model.dart';


class Connect implements IHttpConnect {
  final GetConnect _connect;
  const Connect({required GetConnect connect}) : _connect = connect;

  @override
  Future<Response<T>> get<T>(
    String url, {
    required T Function(dynamic)? decoder,
  }) async {
    final response = await _connect.get(url, decoder: decoder);
    final obj = Response(
      statusCode: response.statusCode!,
      payload: response.body,
    );
    return obj;
  }

  @override
  Future<Response<T>> post<T>(
    String url,
    Map<String, dynamic> body, {
    T Function(dynamic)? decoder,
  }) async {
    final response = await _connect.post(url, body, decoder: decoder);
    final obj = Response(
      statusCode: response.statusCode!,
      payload: response.body,
    );
    return obj;
  }

  @override
  Future<Response<T>> delete<T>(
    String url, {
    T Function(dynamic)? decoder,
  }) async {
    final response = await _connect.delete(url, decoder: decoder);
    final obj = Response(
      statusCode: response.statusCode!,
      payload: response.body,
    );
    return obj;
  }

  @override
  Future<Response<T>> put<T>(
    String url,
    Map<String, dynamic> body, {
    T Function(dynamic)? decoder,
  }) async {
    final response = await _connect.put(url, body, decoder: decoder);
    final obj = Response(
      statusCode: response.statusCode!,
      payload: response.body,
    );
    return obj;
  }
}