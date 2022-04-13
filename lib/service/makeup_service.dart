import 'package:http/http.dart' as http;
import 'package:state_management/model/makeup_model.dart';

class ApiService {
  String url =
      'https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie';

  Future<List<Makeup>> getProducts() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      final makeup = makeupFromJson(jsonString);
      return makeup;
    } else {
      throw Exception('Could not fetch data from the server');
    }
  }
}
