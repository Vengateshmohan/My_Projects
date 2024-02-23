import 'package:get/get.dart';

import 'home_page.dart';

class HomeGetxServices extends GetxController {
  static String home='/';
  static String getHomeRoute()=>home;


  static List<GetPage> routes =[
    GetPage(name: home, page: ()=>const CoffeeHomePage()),
    
  ];
}