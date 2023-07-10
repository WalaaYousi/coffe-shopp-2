import 'package:coffe_shop/screens/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cartScreen extends StatefulWidget {
  const cartScreen({super.key});

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(

        backgroundColor: Color.fromARGB(255, 36, 35, 35),
        appBar: AppBar(
           backgroundColor: Color.fromARGB(255, 36, 35, 35),
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child:  Icon(Icons.arrow_back_ios,
        color: Colors.grey,
        size: 18,),
          ),
       
        title: Text('Cart',
        style: TextStyle(
          fontSize: 18,
          color: Colors.grey,
          fontWeight: FontWeight.w700
        ),),
        ),
        body: SafeArea(child: Padding(padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 130,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage('images/1.png'),
                  fit: BoxFit.cover
                  
                  
                  )
                ),

              ),
              SizedBox(width: 50,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Cold Coffe',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700
                ),
                ),
                  Text('Iced Latte',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700
                ),
                ),
                SizedBox(height:10 ,),
                Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('22 SAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w600

                    ),),
                    SizedBox(width: 100,),
                    Text('X1',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                      fontWeight: FontWeight.w600

                    ),),
                  ],)
              ],
              )
            ],),
            SizedBox(height: 30,),

             Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 130,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage('images/coldcof.png'),
                  fit: BoxFit.cover
                  
                  
                  )
                ),

              ),
              SizedBox(width: 50,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mocca',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700
                ),
                ),
                  Text('white mocca',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700
                ),
                ),
                SizedBox(height:10 ,),
                Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('22 SAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w600

                    ),),
                    SizedBox(width: 100,),
                    Text('X1',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                      fontWeight: FontWeight.w600

                    ),),
                  ],)
              ],
              
              )
            ],),
SizedBox(height: 80,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
  Text('Sub_total',
  style: TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.grey,
    fontSize: 16
  ),
  ),
   Text('44.00 SAR',
  style: TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.redAccent,
    fontSize: 16
  ),
  ),
],
),
SizedBox(height: 15,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
  Text('Delivery Fee',
  style: TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.grey,
    fontSize: 16
  ),
  ),
   Text('12.00 SAR',
  style: TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.grey,
    fontSize: 16
  ),
  ),
],
),

SizedBox(height: 15,),
Container(width: size.width,height: 1,color: Colors.grey,),
SizedBox(height: 15,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
  Text('Total Payment',
  style: TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.white,
    fontSize: 16
  ),
  ),
   Text('56.00 SAR',
  style: TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.redAccent,
    fontSize: 16
  ),
  ),
],
),
SizedBox(height: 40,),
GestureDetector(
  onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: 
            (context)=>payment()));
  },
  child: Container(
    height: 45,
    width: size.width,
    decoration: BoxDecoration(
      color: Color(0xFFEFB322),
      borderRadius: BorderRadius.circular(20)
    ),
    child:Center(child:
      Text('Check out',
    style: TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w700
    ),
    ),
    ) ,
  ),
),

SizedBox(height: 20,),
 Center(child:
      Text('Continue Shopping',
    style: TextStyle(
      color: Colors.grey,
      fontSize: 13,
      fontWeight: FontWeight.w300
    ),
    ),
    ) ,

          ],),
        )),
    );
  }
}