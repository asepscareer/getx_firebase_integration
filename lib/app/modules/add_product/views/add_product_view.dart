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
        child: Column(
          children: [
            TextFormField(
              onTap: () {},
              autocorrect: false,
              decoration: InputDecoration(
                hintText: "Product Name",
                label: const Text("Product Name"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("OK"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
