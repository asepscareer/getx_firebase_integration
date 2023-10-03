import 'package:flutter/material.dart';
import 'package:get/get.dart';

void dialogError(String msg) {
  Get.defaultDialog(
    actions: [
      ElevatedButton(
        onPressed: () => Get.back(),
        child: const Text("OK"),
      )
    ],
    title: "Terjadi Kesalahan",
    content: Text(
      msg,
      textAlign: TextAlign.center,
    ),
  );
}
