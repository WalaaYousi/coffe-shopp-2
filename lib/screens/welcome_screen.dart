import 'package:coffe_shop/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'home_screen.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(bottom:400 , top: 100),
decoration:BoxDecoration(
  color: Colors.black,
  image: DecorationImage(image: AssetImage('images/cof.avif'),
  fit: BoxFit.cover,
  opacity: 0.6,
  ),
  
) ,
child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text('coffe Shop',style: TextStyle(color: Colors.white,
fontSize: 50,
fontWeight: FontWeight.bold

    ),),
    Column(
      children: [
        Text('Feeling low ? take a sip of coffe ',
        style: TextStyle(
          color: Colors.white.withOpacity(0.8),
          fontSize: 18,
          fontWeight: FontWeight.w500,
          letterSpacing: 1,
        ),),
        SizedBox(height: 80,),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: 
            (context)=>home(),));
          },
          child: Ink(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:50 ,vertical: 15),
              decoration: BoxDecoration(
                color: Color(0xFFE57734),
              borderRadius: BorderRadius.circular(10),
              ),
              child: Text('Get Start',style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),),
            ),
          ),
        ),
      ],
    )
    
  ],
),

      ),
    );
      
    
      
    

    
  }
}