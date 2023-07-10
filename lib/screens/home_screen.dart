import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homescreen extends StatelessWidget  {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
   
   
    
    return Scaffold(
      backgroundColor: Colors.grey[200],
drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text('Home'),
        actions: [
          CircleAvatar(radius: 12,
          backgroundColor: Colors.grey,
          child: Icon(Icons.search, color: Colors.white,size: 17,), ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 5),
             child: CircleAvatar(radius: 12,
             backgroundColor: Colors.grey,
             child: Icon(Icons.shop, color: Colors.white,size: 17,),),
           ),
        ],

      ),
      body:
      
       Padding(
        
        padding: const EdgeInsets.symmetric(horizontal:10 ,vertical: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                
                image: DecorationImage(image: AssetImage('images/coffe.jpg'),
                fit: BoxFit.cover),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10), 
              ),
           
            ),
                Column( 
                children: [
                  Container( 
                    child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('cold coffe',style: TextStyle(color: Colors.black),),
                        Text('veiw all',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                 child: Row(
                    children: [
                      
                      products(),
                       products(),
                        products(), 
                        products(),
                    ],
                  )),
                  Padding(padding: 
                    const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('hot coffe',style: TextStyle(color: Colors.black),),
                        Text('veiw all',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                  
                    SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                 child: Row(
                    children: [
                      products(),
                       products(),
                        products(), 
                        products(),
                    ],
                  )),
                
                  
                ],
              ),
          ],
        ),
      ),

    );
  }
}

class products extends StatelessWidget {
  const products({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(   
           
            flex: 2,
            child: 
            
            Image(image: AssetImage('images/coldcof.jpg')
          )),
          Expanded(
          
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('iced coffe',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  Text('50 SAR',
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                   CircleAvatar(radius: 12,
          backgroundColor: Colors.grey,
          child: Icon(Icons.add, color: Colors.white,size: 17,), )
                ],
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}