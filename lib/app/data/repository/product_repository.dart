import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:xxoo/app/data/models/product/product.dart';
import 'package:xxoo/app/data/models/product_response/product_response.dart';
import 'package:xxoo/app/services/network_service.dart';

class ProductRepository {
  final NetworkService service = Get.find<NetworkService>();

  ProductRepository();

  Future<List<Product>> getAll() async {
    var response = await service.get('products');
    var productResp = ProductResponse.fromJson(response.data);
    var list = productResp.products;
    return list;
  }

  Future<Product> getById(int id) async {
    var response = await service.get('products/$id');
    var product = Product.fromJson(response.data);
    return product;
  }
}
