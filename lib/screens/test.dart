import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: 
    Scaffold(
body: 
Container(
  child:Column(children:[
TabBar(tabs: [
  Tab(text: 'a',),
  Tab(text: 'a',),
  Tab(text: 'a',),
]),
Expanded(child: TabBarView(children: [
    Text('aaaa'),
     Text('aaaa'),
      Text('aaaa'),
       
  ]),)


])

    ),
    ));
  }
}