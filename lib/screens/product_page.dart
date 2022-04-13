import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controller/makeup_controller.dart';
import 'package:state_management/model/makeup_model.dart';
import 'package:state_management/service/makeup_service.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProductPage extends StatelessWidget {
  MakeupController controller = Get.put(MakeupController());
  ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
              itemCount: controller.productList.length,
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                  onTap: () => WebView(
                    initialUrl: controller.productList[index].websiteLink,
                    javascriptMode: JavascriptMode.unrestricted,
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    color: Colors.grey[200],
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.network(
                              controller.productList[index].imageLink,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  controller.productList[index].name,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey[700]),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  controller.productList[index].brand,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[500]),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '${controller.productList[index].price} ${controller.productList[index].priceSign}',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[500]),
                                ),
                              ],
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                );
              });
        }
      }),
    );
  }
}
