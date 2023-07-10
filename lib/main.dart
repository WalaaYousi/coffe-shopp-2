import 'package:coffe_shop/screens/cart_screen.dart';
import 'package:coffe_shop/screens/home.dart';
import 'package:coffe_shop/screens/home_screen.dart';
import 'package:coffe_shop/screens/product_details.dart';
import 'package:coffe_shop/screens/test.dart';
import 'package:coffe_shop/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Coffeapp());
}
class Coffeapp extends StatelessWidget {
  const Coffeapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    routes: {
    "/" : (context)=> welcomeScreen(),
    "/home":(context)=> home(),
    "productDetails":(context)=> ProductDetails(),
    }
    );
      
    
  }
}

