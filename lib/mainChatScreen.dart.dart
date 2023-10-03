import 'package:flutter/material.dart';
//import 'package:whatsapp_clone/chats.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/chats.dart';
//import 'package:whatsapp/lib/chats.dart';

import 'package:flutter/material.dart';
import 'package:whatsapp/mainCallScreen.dart.dart';

void main() {
  runApp(const MainChatScreen());
}

class MainChatScreen extends StatelessWidget {
  const MainChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsUp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        // useMaterial3: true, // Commented out as it's not recognized in ThemeData
      ),
      home: const MyHomePage(title: 'WhatUp!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          if (_currentIndex == 0)
            ContactsList(), // Show ContactsList when _currentIndex is 0
          if (_currentIndex == 1)
            mainCallsScreen(), // Show CallsScreen when _currentIndex is 1
        ],
      ),
      // body: ContactsList(),
      // : IndexedStack(
      //   children: [
      //       mainCallsScreen(), // Show CallsScreen when _currentIndex is 1
      //   ],)
    );
  }
}


        //   Container(
        //        child: Row(
        //               children:<Widget>[
        //            const SizedBox(height: 2,width:5,),
                  
        //         const SizedBox(height: 2,width:60,),
        //           TextButton(onPressed: (){
        //           }, 
        //           child: const Text('Updates',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey,fontSize: 22),),
        //           ),const SizedBox(height: 2,width:60,),
        //           TextButton(onPressed: (){
        //           }, 
        //           child: const Text('Calls',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey,fontSize: 22),),
        //           ),
        //       ],   
        //        ),
        // ),
      /*child: SizedBox(
         width:100,
        height: 50,
        color:Colors.grey,
        child:Center(
        child:
        TextButton(
            child:Text('Click Here!'),
          onPressed:(){
              print("TAPPED!");
          },
        ),
          width:1000, height:800,
          child:Image.asset('assets/images/BarneyWhatUp.jpg'),
        ),*/


