import 'package:flutter/material.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  var Selected = 0;

  static const TextStyle optionStyle =

  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: account_box',
      style: optionStyle,
    ),
    Text(
      'Index 2: accessibility',
      style: optionStyle,
    ),
    Text(
      'Index 2: add',
      style: optionStyle,
    ),
    Text(
      'Index 2: remove',
      style: optionStyle,
    ),
  ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     Selected = index;
  //   });
  // }
  //
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottomnavigationbar"),
      ),
      
      body: Center(
      child: _widgetOptions.elementAt(Selected),  
      ),
      
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: Selected,
        onTap: (index){
          setState((){
            Selected = index;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        elevation: 1,
        backgroundColor: Color(0xffebefef),
        selectedItemColor: Color(0xffd80605),
        unselectedItemColor: Colors.cyan,
        selectedFontSize: 20,
        unselectedFontSize: 15,


        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 30,),
          label: "home"
          ),


          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
          label: "account_box"),


          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
          label: "accessibility"),

          BottomNavigationBarItem(
              icon: Icon(Icons.add),
          label: "add"),

          BottomNavigationBarItem(
              icon: Icon(Icons.remove),
          label: "remove"),

        ],
      ),



    );
  }
}
