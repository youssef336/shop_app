import 'package:shop_app/helper/api.dart';
import 'package:shop_app/models/product_model.dart';

class CagegoriesServices {
  Future<List<ProductModel>> getCagegoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        // ignore: missing_required_param
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
