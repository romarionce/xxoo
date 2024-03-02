// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

class NetworkService extends GetxService {
  Dio httpClient = Dio(BaseOptions(baseUrl: 'https://dummyjson.com/'));

  Future<Response> get(String url) async {
    var response = await httpClient.get(url);
    return response;
  }

  Future<void> post(String url) async {}
}

class SyncClass extends GetxService {
  int a = 1;
}

class AsyncClass extends GetxService {
  late int a;

  Future<AsyncClass> init() async {
    await Future.delayed(const Duration(seconds: 1));
    a = 2;
    return this;
  }
}
