import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_mvvm/res/routes/routes.dart';
import 'package:get_mvvm/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    //  home: const SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}

