import 'package:coffe_shop/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeNav extends StatelessWidget {
  const HomeNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 70,
      
      decoration: BoxDecoration(
color: Color.fromARGB(255, 36, 35, 35),
boxShadow:[BoxShadow(
color: Colors.black.withOpacity(0.4),
blurRadius: 8,
spreadRadius: 1,

)]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(Icons.mail,
        color: Colors.white,
        size: 35,),
        Icon(Icons.notifications,
        color: Colors.white,
        size: 35,),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xFFEFB322),
            borderRadius: BorderRadius.circular(40),
            boxShadow:[BoxShadow(
color: Colors.white.withOpacity(0.4),
blurRadius: 6,
spreadRadius: 1,

)]
          ),
            child:InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: 
            (context)=>cartScreen()));
              },
              child: Icon(Icons.shopping_cart,
        color: Colors.white,
        size: 30,),) 
        ),
        Icon(Icons.favorite,
        color: Colors.white,
        size: 35,),
        Icon(Icons.person,
        color: Colors.white,
        size: 35,)
      ],),
    );
  }
}