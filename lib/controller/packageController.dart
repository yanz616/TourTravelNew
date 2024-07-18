import 'package:get/get.dart';
import 'package:tourtravelnew/models/package.dart';

class PackageController extends GetxController {
  var wisata = <Wisata>[].obs;

  @override
  void onInit() {
    super.onInit();

    wisata.addAll([
      Wisata(
        'Gili Terawangan',
        'Lombok Timur',
        4.9,
        'assets/images/image-1.jpg',
      ),
      Wisata(
        'Gili Air',
        'Lombok Timur',
        4.9,
        'assets/images/image-2.jpg',
      ),
      Wisata(
        'Gili meno',
        'Lombok Timur',
        4.9,
        'assets/images/image-3.jpg',
      ),
    ]);
  }
}
