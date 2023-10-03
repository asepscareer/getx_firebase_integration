import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class ListProductView extends GetView<HomeController> {
  const ListProductView({super.key, required this.product});
  final product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: ListTile(
        onTap: () {
          Get.toNamed(Routes.EDIT_PRODUCT, arguments: {
            "id": product.id,
            "name": product.name,
            "price": product.price,
          });
        },
        leading: const CircleAvatar(
          child: Icon(Icons.apple),
        ),
        title: Text(
          product.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("Rp. ${product.price}"),
        trailing: IconButton(
          onPressed: () {
            controller.deleteProducts(product.id);
          },
          icon: const Icon(Icons.delete_forever),
        ),
      ),
    );
  }
}
