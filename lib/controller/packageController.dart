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
      ),
      Wisata(
        'Gili Air',
        'Lombok Timur',
        4.9,
      ),
      Wisata(
        'Gili meno',
        'Lombok Timur',
        4.9,
      ),
    ]);
  }
}
