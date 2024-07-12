import 'package:get/get.dart';
import 'package:tourtravelnew/models/banner.dart';

class BannerController extends GetxController {
  var slider = <Banner>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    slider.addAll([
      Banner(
        'assets/images/image-1.jpg',
      ),
      Banner(
        'assets/images/image-2.jpg',
      ),
      Banner(
        'assets/images/image-3.jpg',
      ),
    ]);
  }
}
