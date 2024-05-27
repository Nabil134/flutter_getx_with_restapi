import 'dart:async';

import 'package:get/get.dart';
import 'package:get_mvvm/res/routes/routes_name.dart';

class SplashServices{

  /*isLogin start here*/
  void isLogin(){
Timer(const Duration(seconds: 3),()=>Get.toNamed(RouteName.loginView),);
  }
  /*isLogin end here*/
}