import 'dart:async';

import 'package:get/get.dart';
import '../../../data/models/product_model.dart';
import '../../../data/providers/product_provider.dart';

class HomeController extends GetxController {
  @override
  Future<void> onInit() async {
    super.onInit();
    await fetchProducts();
  }

  final ProductProvider _productProvider = ProductProvider();
  final RxList<Product> products = <Product>[].obs;

  Future<List<Product>> fetchProducts() async {
    try {
      final Map<String, dynamic> responseData =
          await _productProvider.getProduct();
      final List<Product> productList = responseData.entries
          .map((entry) => Product.fromJson(entry.key, entry.value))
          .toList();
      products.assignAll(productList);
      return products;
    } catch (e, s) {
      s.printError();
      return [];
    }
  }

  void deleteProducts(String id) {
    ProductProvider().deleteProduct(id);
  }
}
