

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'home.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 35, 35),
      body:
      ListView(
        children: [
          headerbody(),
          imagebody(),
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            child:
            Column( 
              
              children: [
                 Text('BEST COFFE ',style: TextStyle(color: Colors.grey,
                 letterSpacing: 3),),
                 SizedBox(height: 10,),
           Text('Cold Coffe',style: TextStyle(color: Colors.white,
           fontSize: 25,
           fontWeight: FontWeight.bold),),
              ],
              
             
        )),
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
               padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                decoration: BoxDecoration(
                  
                  color: Color.fromARGB(255, 36, 35, 35),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)
                ),
              
                child:
                Row(
                  children: [
                    Icon(Icons.add,color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('2',style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),),
                    SizedBox(width: 10,),
                    Icon(Icons.remove,color: Colors.white,)
                  ],
                )
              ),
              Expanded(child: Text('')),
              Text('23 SAR',style: TextStyle(color: Colors.white,fontSize: 15),)
            ],
          ),
          
        ),
        Container(
          padding: EdgeInsets.all(20),
          child:Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('cold coffe cold coffe cold coffe cold coffe cold coffe cold coffe cold coffe cold coffe  ',style: 
          TextStyle(
            color: Colors.grey
          ),),
          SizedBox(height: 20,),
          Text('volume : 60 ml',style: TextStyle(
            color: Colors.white,
            fontSize: 15
          ),)
            ],
          ),
          
          
        ),
        
        ],
      ),
      bottomNavigationBar:
      navbar(),
      
      
      
    
    );
    
  }
}
navbar(){
  return Container(
    padding: EdgeInsets.all(20),
    height: 80,
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 49, 48, 48),
            borderRadius: BorderRadius.circular(10),
          ),
          child:  Text('Add To Cart',style: TextStyle(color: Colors.white),),
        ),
       Expanded(child: Text('')),
       Container(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
          ),
          child:
       Icon(Icons.favorite,color: Colors.white,),
    )],
    ),
  );

}


headerbody(){
return
  Container(
        
        padding: EdgeInsets.all(30),
        alignment: Alignment.bottomLeft,
        child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: [
         InkWell(onTap: (){
          
         },
         child: Icon(Icons.arrow_back_ios,
         color: Colors.grey,
         size: 35,),
         )
          
         
          
           
        ],
        
      ),
      
    );
}
 imagebody(){
return Container(
  height: 300,
  padding: EdgeInsets.all(20),
child:
  Image.asset('images/1.png')
);





 }