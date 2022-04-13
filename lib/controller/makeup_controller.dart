import 'package:get/get.dart';
import 'package:state_management/service/makeup_service.dart';

class MakeupController extends GetxController {
  RxBool isLoading = false.obs;

  RxList productList = [].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService().getProducts();
      if (products != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
