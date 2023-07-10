import 'package:coffe_shop/widgetss/item_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgetss/nav_page.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 36, 35, 35),
        drawer:Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
            UserAccountsDrawerHeader(accountName: Text('walaa'), accountEmail: Text('Walaa@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network('https://xyzshayari.com/wp-content/uploads/2022/05/simple-girl-dp-768x768.png',
                width: 90,
                height: 90,
                fit: BoxFit.cover,),
              )
            ),
            decoration: BoxDecoration(
              image: DecorationImage(image:
               NetworkImage('https://i.pinimg.com/736x/17/08/9f/17089f4c221d8a8d19371546cf706fa0--twitter-cover-cover-pics.jpg'),
               fit: BoxFit.cover
               )
            ),
            
            ),

            ListTile(
              leading :Icon(Icons.favorite),
              title: Text('Favorits'),

            ),
             ListTile(
              leading :Icon(Icons.people),
              title: Text('Friends'),

            ),
             ListTile(
              leading :Icon(Icons.share),
              title: Text('Share'),

            ),
             ListTile(
              leading :Icon(Icons.notifications),
              title: Text('Request'),

            ),
             ListTile(
              leading :Icon(Icons.settings),
              title: Text('Setting'),
              

            ),
             ListTile(
              leading :Icon(Icons.description),
              title: Text('polices'),

            ),
             ListTile(
              leading :Icon(Icons.favorite),
              title: Text('Favorits'),

            ),
             ListTile(
              leading :Icon(Icons.exit_to_app),
              title: Text('Exit'),

            ),
          ],),
        ),
        body:
        SafeArea(child: Column(children: [  
             
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Builder(
                builder: (context) {
                  return InkWell( 
                    onTap: (){
                      Scaffold.of(context).openDrawer();
                    },
                    child:
                  Icon(Icons.sort_rounded,
                  color: Colors.white,
                  size: 35,));
                }
              ),
              Expanded(child: Text('')),
              InkWell( child:
              Icon(Icons.search,
              color: Colors.white,
              size: 35,)),
            ],
          ),
          
        
                SizedBox(height: 20,),
        
          Container(
            padding: EdgeInsets.all(10),
            child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children:[ Text('Hot & Fast Food',
          style: TextStyle(color: Colors.white
          ,fontWeight: FontWeight.bold,
          fontSize: 30),),
          SizedBox(height: 10,),
          Text('Deliver On Time ',
          style: TextStyle(color: Colors.grey
          ,
          fontSize: 22),),
    
          SizedBox(height: 20,),
          
          ]),),

  
          TabBar(
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 20),
            labelPadding: EdgeInsets.symmetric(horizontal: 20),
            tabs: [
              Text('cold coffe'),
              Text('black coffe'),
              Text('latte'),
              Text(''),
            ],
          ),
          Expanded(
            
            child:  TabBarView(children: [
    itemWidgets(),
   itemWidgets(),
   itemWidgets(),
   itemWidgets(),
         ] ))
      
          ])
          
          ),
          
           bottomNavigationBar: HomeNav(),

    
          
        
      
          
        ),

      );
    

  }
}