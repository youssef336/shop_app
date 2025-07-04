// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:shop_app/helper/api.dart';

class AllcategoriesServices {
  Future<List<dynamic>> getallcategories() async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/categories', token: '');

    return data;
  }
}
