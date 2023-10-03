import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_product_controller.dart';

class EditProductView extends GetView<EditProductController> {
  const EditProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              autocorrect: false,
              controller: controller.name,
              decoration: InputDecoration(
                hintText: Get.arguments["name"],
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              autocorrect: false,
              controller: controller.price,
              decoration: InputDecoration(
                hintText: Get.arguments["price"].toString(),
                helperText: "* Masukkan hanya angka",
                border: const OutlineInputBorder(),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  controller.edit(
                    Get.arguments["id"],
                    controller.name.text,
                    controller.price.text,
                  );
                },
                child: const Text("OK"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
