import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xxoo/app/data/models/product/product.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  factory ProductResponse({
    required List<Product> products,
    required int total,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}
