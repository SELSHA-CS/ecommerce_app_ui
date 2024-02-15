import 'package:ecommerce_app_ui/screens/productpage.dart';
import 'package:ecommerce_app_ui/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', 
      routes: {
        '/': (context) => SplashScreen(),
        'productspage': (context) => ProductPage(),
      },
    );
  }
}
