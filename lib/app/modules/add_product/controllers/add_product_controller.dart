import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/product_model.dart';
import '../../../data/providers/product_provider.dart';
import '../../../widgets/dialog_err.dart';

class AddProductController extends GetxController {
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
    super.dispose();
    name.dispose();
    price.dispose();
  }

  void add(String name, String prc) {
    if (name != '' && prc != '') {
      double price = double.parse(prc);

      ProductProvider().addProduct(name, price).then((response) {
        final data = Product(
          id: response["name"],
          name: name,
          price: price,
        );
        products.add(data);
        Get.back();
      });
    } else {
      dialogError("Semua input harus terisi");
    }
  }
}
