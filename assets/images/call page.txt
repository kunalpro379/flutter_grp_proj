import 'package:flutter/material.dart';

void main()
{

  runApp( MyHome());
 
}
 
 class MyHome extends StatelessWidget
 {
            
          final List<Tab>myTabs=<Tab>
          [
                 Tab(text: 'CHATS'),
                 Tab(text: 'STATUS'), 
                 Tab(text: 'CALLS'),
                

          ];



      @override
       
      Widget build(BuildContext context)
    {
      
       return MaterialApp(
        theme: ThemeData.dark(),
             home: DefaultTabController(
             
              length: myTabs.length,
              child:Scaffold(
              appBar: AppBar(
                title: Text('Whatsapp'),
                   
                   actions: const <Widget>[
                          
                         
                        
                        Icon(Icons.camera_alt_outlined),

                        SizedBox(
                          width: 20,
                        ),
                         Icon(Icons.search),
                         SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.more_vert_outlined),



                   ],
               
               
                 

                toolbarHeight: 80,

                bottom: TabBar
                (
                     tabs: myTabs,


                ),

                 
                  
    
                ),
                 body:TabBarView(
                  children:[
                  
                   Center(child: Text('chats content'),),
                    Center(child: Text('chats content'),),
                      Center(child: 
                      ListView(
                              children:<Widget> [

                                   ListTile(
                                    title: Text('Recent'),
                                   ),



                                 ListTile(
                                    leading: CircleAvatar(
                                      foregroundImage: AssetImage('assets/images/kunal.png'),
                                    ),
                                    title: Text('Kunal Patil',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.red),),
                                     subtitle: 
                                         Row(children: [
                                                Text('5 minutes ago',style: TextStyle(color: Colors.grey,fontSize: 10),),
                                                Icon(Icons.phone_missed_outlined,size: 10,color: Colors.red,),
                                    

                                         ],),
                                   
                                     trailing: Icon(Icons.call,color: Colors.green,),
                      
                               ),

                                ListTile(
                                    leading: CircleAvatar(
                                      foregroundImage: AssetImage('assets/images/vinit.png'),
                                    ),
                                    title: Text('Vinit Solanki',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),),
                                     subtitle: Row(children: [
                                       Text(' 20 minutes ago',style: TextStyle(color: Colors.grey,fontSize: 10),),
                                       Icon(Icons.call_received_outlined,size: 10,color: Colors.white,)

                                     ],),
                                     
                                     trailing: Icon(Icons.call,color: Colors.green,),
                      
                               ),

                               ListTile(
                                    leading: CircleAvatar(
                                      foregroundImage: AssetImage('assets/images/bohra.png'),
                                    ),
                                    title: Text('Ayush Bohra',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),),
                                     subtitle: Row(children:[
                                             Text('12 September,12:15 pm',style: TextStyle(color: Colors.grey,fontSize: 10),),
                                             Icon(Icons.call_received_outlined,size: 10,color: Colors.white,)


                                     ]
                                        

                                     ),
                                     
                                     trailing: Icon(Icons.call,color: Colors.green,),
                      
                               ),
                              ListTile(
                                    leading: CircleAvatar(
                                      foregroundImage: AssetImage('assets/images/me.png'),
                                    ),
                                    title: Text('Aditya Mhatre',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),),
                                     subtitle: Row(children: [
                                      Text('1 August,10:43 am',style: TextStyle(color: Colors.grey,fontSize: 10),),
                                      Icon(Icons.call_made_outlined,size:10,color: Colors.white,)

                                     ],
                                       

                                     ),
                                     
                                     trailing: Icon(Icons.call,color: Colors.green,),
                      
                               )


                              ]


                     ) 
                      ),
                       
                      
                
            ] ),
           
       ),

       

       ));
              
    }}

