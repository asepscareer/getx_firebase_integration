import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learn_firebase/app/modules/home/views/list_product_view.dart';
import 'package:learn_firebase/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: const SafeArea(
        child: ListProductView(),
      ),
    );
  }
}
