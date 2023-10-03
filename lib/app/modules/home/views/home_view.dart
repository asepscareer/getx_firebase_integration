import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learn_firebase/app/data/models/product_model.dart';
import 'package:learn_firebase/app/modules/home/views/list_product_view.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';
// import 'list_product_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("List Products"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.ADD_PRODUCT);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Obx(
        () => controller.products.isEmpty
            ? const Center(child: Text("Tidak ada produk."))
            : SafeArea(
                child: FutureBuilder(
                  future: controller.fetchProducts(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Center(child: Text("Data gagal diambil"));
                    } else if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return ListView.builder(
                        itemCount: controller.products.length,
                        itemBuilder: (context, index) {
                          Product product = controller.products[index];
                          return ListProductView(product: product);
                        },
                      );
                    }
                  },
                ),
              ),
      ),
    );
  }
}
