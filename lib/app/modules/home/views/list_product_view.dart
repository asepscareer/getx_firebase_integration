import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learn_firebase/app/routes/app_pages.dart';

class ListProductView extends GetView {
  const ListProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
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
              Get.toNamed(Routes.EDIT_PRODUCT);
            },
            leading: const CircleAvatar(
              child: Icon(Icons.apple),
            ),
            title: const Text(
              "Product title - 2020",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("2023"),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete_forever),
            ),
          ),
        );
      },
    );
  }
}
