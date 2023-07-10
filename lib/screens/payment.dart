import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  int _type=1;
  void _handleradio(Object?e)=> setState(() {
    _type=e as int;
  });
  @override
  
  Widget build(BuildContext context) {
     Size size =MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor:    Color.fromARGB(255, 36, 35, 35),
appBar: AppBar(
  backgroundColor:    Color.fromARGB(255, 36, 35, 35),
  leading: 
  InkWell(onTap: (){
    Navigator.pop(context);
  },
  child:
  Icon(Icons.arrow_back_ios_new_outlined,
  color: Colors.grey,
  size: 18,),
  ),
  
  title: Text('Confirm Order',
  style: TextStyle(
    color: Colors.grey,
    fontSize: 18,
    fontWeight: FontWeight.w500
  ),),
),
body: SafeArea(child: Padding(padding: 
EdgeInsets.all(30),
child: Center(
  child: Column(
    children: [
      SizedBox(height: 40,),
      Container(
        width: size.width,
        height: 55,
        decoration: BoxDecoration(
          border: _type==1 
          ?Border.all(width: 1,color: Colors.white)
          :Border.all(width: 0.3,color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
          color: Colors.transparent
        ),
        child: Center(
          child: Padding(padding: 
          EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Radio(value: 1, groupValue: _type, onChanged: _handleradio,
                  activeColor: Colors.grey,),
                  Text('Amazon Pay',
                  style: _type==1?TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400

                  ):
                  TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                  )),
                
                ],
                
              ),
                Image.asset('images/amazon.png',
                )
            ],
          ),
          ),
        ),
      ),
       SizedBox(height: 15,),
      Container(
        width: size.width,
        height: 55,
        decoration: BoxDecoration(
          border: _type==2
          ?Border.all(width: 1,color: Colors.white)
          :Border.all(width: 0.3,color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
          color: Colors.transparent
        ),
        child: Center(
          child: Padding(padding: 
          EdgeInsets.only(right: 20),
          child: Row(
          
            children: [
              Row(
                children: [
                  Radio(value: 2, groupValue: _type, onChanged: _handleradio,
                  activeColor: Colors.grey,),
                  Text('Credit Card',
                  style: _type==2?TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400

                  ):
                  TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                  )),
                
                ],
                
              ),
              Spacer(),
                Image.asset('images/visa.jpg',
                
                ),
                SizedBox(width: 5,),
                 Image.asset('images/mastercard.jpg',
                 
                ),
            ],
          ),
          ),
        ),
      ),
       SizedBox(height: 15,),
      Container(
        width: size.width,
        height: 55,
        decoration: BoxDecoration(
          border: _type==3
          ?Border.all(width: 1,color: Colors.white)
          :Border.all(width: 0.3,color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
          color: Colors.transparent
        ),
        child: Center(
          child: Padding(padding: 
          EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Radio(value: 3, groupValue: _type, onChanged: _handleradio,
                  activeColor: Colors.grey,),
                  Text('Pay Pal',
                  style: _type==3?TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400

                  ):
                  TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                  )),
                
                ],
                
              ),
                Image.asset('images/paypal.png',
                )
            ],
          ),
          ),
        ),
      ),
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
    color: Colors.grey,
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
      color: Colors.redAccent,
      borderRadius: BorderRadius.circular(10)
    ),
    child:Center(child:
      Text('Order Confirm',
    style: TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w700
    ),
    ),
    ) ,
  ),
),

    ],
  ),
),
)),

    );
  }
}