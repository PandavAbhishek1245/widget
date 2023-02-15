import 'package:flutter/material.dart';

class AppbarDemo extends StatefulWidget {
  const AppbarDemo({Key? key}) : super(key: key);

  @override
  State<AppbarDemo> createState() => _AppbarState();
}

class _AppbarState extends State<AppbarDemo> {
  var Selected = 0;
  @override
  Widget build(BuildContext context) =>DefaultTabController(
      length: 4,
    child: Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
            decoration:BoxDecoration(
              gradient: LinearGradient(
                  colors:[Colors.red,Colors.purple],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
              ),
            ),
        ),
        bottom: TabBar(
          // isScrollable: true,
          indicatorColor: Colors.black,
         indicatorWeight: 5,
         tabs: [
           Tab(icon: Icon(Icons.home),text: 'home'),
           Tab(icon: Icon(Icons.star),text: 'feed'),
           Tab(icon: Icon(Icons.face),text: 'Profile'),
           Tab(icon: Icon(Icons.settings),text: 'Settings'),
        ],
       ),
        elevation: 40,
        titleSpacing: 4,
        title: Center(child: Text("Appbar")),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.notifications_none),
          SizedBox(width: 20,),
          Icon(Icons.search),
        ],
      ),

      drawer: Drawer(
        child: ListView(children: [
          ListTile(title: Text('GMAIL',style: TextStyle(fontSize: 50),),),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              label: Text('search'),
            ),
          ),
          ListTile(leading: Icon(Icons.person),title: Text('Person'),),
          ListTile(leading: Icon(Icons.email),title: Text('Email'),),
          ListTile(leading: Icon(Icons.account_balance),title: Text('account_balance'),),
          ListTile(leading: Icon(Icons.abc_rounded),title: Text('abc_rounded'),),
          ListTile(leading: Icon(Icons.add_business),title: Text('add_business'),),
          ListTile(leading: Icon(Icons.add),title: Text('add'),),
          ListTile(leading: Icon(Icons.account_box),title: Text('account_box'),),
          ListTile(leading: Icon(Icons.abc),title: Text('abc'),),
          ListTile(leading: Icon(Icons.account_circle),title: Text('account_circle'),),
        ],),
      ),

      body: TabBarView(
        children: [
          Center(child: Text('Home Page',style: TextStyle(fontSize: 50),)),
          Center(child: Text('Feed Page',style: TextStyle(fontSize: 20),)),
          Center(child: Text('Profile Page',style: TextStyle(fontSize: 20),)),
          Center(child: Text('Setting Page',style: TextStyle(fontSize: 20),)),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: Selected,
          onTap: (index){
            setState((){
              Selected = index;
            });
            },
          type: BottomNavigationBarType.fixed,
          iconSize: 40,
          backgroundColor: Colors.red,
          selectedFontSize: 25,
          unselectedFontSize: 15,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: 'add'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'parson'),
        BottomNavigationBarItem(icon: Icon(Icons.car_crash),label: 'car'),

      ],
      ),

    ),
    );
  }
