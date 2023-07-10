import 'package:coffe_shop/screens/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class itemWidgets extends StatelessWidget {
  const itemWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,
    shrinkWrap: true,
    childAspectRatio: 0.76,
    children: [
      for(int i=1;i<5;i++)
      Container(
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        margin: EdgeInsets.symmetric(vertical: 8,horizontal: 13),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 36, 35, 35),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.4),
          spreadRadius: 1,
          blurRadius: 8
          )]
        ),
        child:Column(
          
          children:[ InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: 
            (context)=>ProductDetails(),));
          },
          child:Container(
            padding: EdgeInsets.all(10),
            child:
             Image.asset('images/1.png',
          width: 120,
          height: 120,
          fit: BoxFit.cover,),
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 8),
        child:  Container(
          alignment: Alignment.centerLeft,
        child: Text('cold coffe',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white
        ),),
        
      ),
     ),
          Container(
            alignment: Alignment.centerLeft,
        child: Text('Iced Latte',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white60
        ),),
        
        
      ),
      Padding(padding: EdgeInsets.symmetric(vertical: 10),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[ Text('22 SAR',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),),
      Icon(Icons.shopping_cart_checkout,
      color: Colors.white,
      size: 27,)
      ])
      
      )
        ])
        
      
        
      ),
    ],
    );
  }
}