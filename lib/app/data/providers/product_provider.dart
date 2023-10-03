import 'package:get/get.dart';

class ProductProvider extends GetConnect {
  final String _url = "https://getx-flutter-15e48-default-rtdb.firebaseio.com/";

  Future<Map<String, dynamic>> getProduct() async {
    var response = await get("$_url/products.json");
    return response.body;
  }

  Future<dynamic> addProduct(String name, double price) async {
    final response = await post("$_url" 'products.json', {
      "name": name,
      "price": price,
    });
    return response.body;
  }

  Future<void> editProduct(String id, String name, double price) async {
    await patch(
      "$_url" 'products/$id.json',
      {
        "name": name,
        "price": price,
      },
    );
  }

  Future<void> deleteProduct(String id) async =>
      await delete("$_url" 'products/$id.json');
}
