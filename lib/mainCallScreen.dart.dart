import 'package:flutter/material.dart';
import 'package:whatsapp/chats.dart';

void main() {
  runApp(mainCallsScreen());
}

class mainCallsScreen extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: DefaultTabController(
          length: myTabs.length,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Whatsapp'),
              actions: [
                IconButton(
                  onPressed: () {
                    showSearch(
                        context: context, delegate: CustomSearchDelegate());
                  },
                  icon: const Icon(Icons.search),
                ),
                PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return [
                      const PopupMenuItem(
                        child: Text('Settings'),
                        value: 'settings',
                      ),
                    ];
                  },
                  onSelected: (String choice) {
                    if (choice == 'settings') {
                      // Handle settings action here
                    }
                  },
                  icon: const Icon(Icons.more_vert),
                ),
                Icon(Icons.camera_alt_outlined),
                SizedBox(
                  width: 20,
                ),
                // Icon(Icons.search),
                // SizedBox(
                //   width: 20,
                // ),
                // Icon(Icons.more_vert_outlined),
              ],
              toolbarHeight: 80,
              bottom: TabBar(
                tabs: myTabs,
              ),
            ),
            body: TabBarView(children: [
              ContactsList(),
              Center(
                child: Text('chats content'),
              ),
              Center(
                  child: ListView(children: <Widget>[
                ListTile(
                  title: Text('Recent'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage('assets/images/kunal.png'),
                  ),
                  title: Text(
                    'Kunal Patil',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '5 minutes ago',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Icon(
                        Icons.phone_missed_outlined,
                        size: 10,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage('assets/images/vinit.png'),
                  ),
                  title: Text(
                    'Vinit Solanki',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        ' 20 minutes ago',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Icon(
                        Icons.call_received_outlined,
                        size: 10,
                        color: Colors.white,
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage('assets/images/bohra.png'),
                  ),
                  title: Text(
                    'Ayush Bohra',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Row(children: [
                    Text(
                      '12 September,12:15 pm',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Icon(
                      Icons.call_received_outlined,
                      size: 10,
                      color: Colors.white,
                    )
                  ]),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage('assets/images/me.png'),
                  ),
                  title: Text(
                    'Aditya Mhatre',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '1 August,10:43 am',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Icon(
                        Icons.call_made_outlined,
                        size: 10,
                        color: Colors.white,
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage('assets/images/kunal.png'),
                  ),
                  title: Text(
                    'Kunal Patil',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '5 minutes ago',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Icon(
                        Icons.phone_missed_outlined,
                        size: 10,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage('assets/images/vinit.png'),
                  ),
                  title: Text(
                    'Vinit Solanki',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        ' 20 minutes ago',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Icon(
                        Icons.call_received_outlined,
                        size: 10,
                        color: Colors.white,
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage('assets/images/bohra.png'),
                  ),
                  title: Text(
                    'Ayush Bohra',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Row(children: [
                    Text(
                      '12 September,12:15 pm',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Icon(
                      Icons.call_received_outlined,
                      size: 10,
                      color: Colors.white,
                    )
                  ]),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage('assets/images/me.png'),
                  ),
                  title: Text(
                    'Aditya Mhatre',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '1 August,10:43 am',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Icon(
                        Icons.call_made_outlined,
                        size: 10,
                        color: Colors.white,
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage('assets/images/kunal.png'),
                  ),
                  title: Text(
                    'Kunal Patil',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '5 minutes ago',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Icon(
                        Icons.phone_missed_outlined,
                        size: 10,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage('assets/images/vinit.png'),
                  ),
                  title: Text(
                    'Vinit Solanki',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        ' 20 minutes ago',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Icon(
                        Icons.call_received_outlined,
                        size: 10,
                        color: Colors.white,
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage('assets/images/bohra.png'),
                  ),
                  title: Text(
                    'Ayush Bohra',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Row(children: [
                    Text(
                      '12 September,12:15 pm',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Icon(
                      Icons.call_received_outlined,
                      size: 10,
                      color: Colors.white,
                    )
                  ]),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage('assets/images/me.png'),
                  ),
                  title: Text(
                    'Aditya Mhatre',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '1 August,10:43 am',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Icon(
                        Icons.call_made_outlined,
                        size: 10,
                        color: Colors.white,
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                )
              ])),
            ]),
          ),
        ));
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implement search results here
    return Center(
      child: Text('Search results for: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Implement search suggestions here
    return Center(
      child: Text('Search suggestions for: $query'),
    );
  }
}
