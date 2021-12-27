
import 'package:get/get.dart';

class MyHomePageController extends GetxController{

  RxInt contador = 0.obs;

  void somaUmaUnidade(){
    contador.value = contador.value + 1;
  }
}