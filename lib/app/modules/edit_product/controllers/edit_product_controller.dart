import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/product_model.dart';
import '../../../data/providers/product_provider.dart';

class EditProductController extends GetxController {
  late TextEditingController name, price;
  RxList<Product> products = List<Product>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    name = TextEditingController();
    price = TextEditingController();
  }

  @override
  void onClose() {
    name.dispose();
    price.dispose();
  }

  void edit(String id, String name, String prc) {
    double price = double.parse(prc);
    ProductProvider().editProduct(id, name, price);
    Get.back();
  }
}
