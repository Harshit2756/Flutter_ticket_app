import 'package:get/get.dart';

class TextExpansionController extends GetxController {
  RxBool isExpanded = false.obs;

  void toggleExpansion() {
    isExpanded.value = !isExpanded.value;
  }
}
