import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              autocorrect: false,
              controller: controller.name,
              decoration: const InputDecoration(
                labelText: "Product Name",
                hintText: "Input product name here....",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              autocorrect: false,
              controller: controller.price,
              decoration: const InputDecoration(
                labelText: "Product Price",
                hintText: "Input product price here....",
                border: OutlineInputBorder(),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () => Get.find<AddProductController>().add(
                  controller.name.text,
                  controller.price.text,
                ),
                child: const Text("OK"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
