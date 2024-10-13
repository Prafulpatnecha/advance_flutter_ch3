import 'package:get/get.dart';

class SearchFiledController extends GetxController{
  RxString searchString = ''.obs;


  void searchMethod(String value)
  {
    if(value.isEmpty)
      {
        searchString.value='';
      }else
        {
          searchString.value = "https://www.google.com/search?q=$value";
        }
    update();
  }
}