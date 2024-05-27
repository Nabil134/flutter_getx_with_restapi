
import 'package:flutter/material.dart';
import 'package:get_mvvm/data/app_exceptions.dart';
import 'package:get_mvvm/res/assets/image_assets.dart';
import 'package:get_mvvm/utils/utils.dart';
import 'package:get_mvvm/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices=SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Center(child: Text('Welcome\nBack',textAlign: TextAlign.center,),),
        ],
      ),

    );
  }
}
