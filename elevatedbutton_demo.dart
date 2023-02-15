import 'package:flutter/material.dart';

class ElevatedbuttonDemo extends StatefulWidget {
  const ElevatedbuttonDemo({Key? key}) : super(key: key);

  @override
  State<ElevatedbuttonDemo> createState() => _ElevatedbuttonDemoState();
}

class _ElevatedbuttonDemoState extends State<ElevatedbuttonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("elevated button demo")),
      ),


      body: Container(
         child: Column(
           children: [
             ElevatedButton(onPressed: (){
               print("elevated button on pressed ");
             },
                 child: Text("elevated button one"),
             ),

             SizedBox(height: 30),

             ElevatedButton.icon(onPressed: (){
               print("elevated icons button on pressed");
             },
                 icon: Icon(Icons.photo),
                 label: Text("elevated icons button"),
             ),

             SizedBox(height:50),

             ElevatedButton(onPressed: (){
               print("round button pressed");
             },
                 child: Text("round elevated button"),
                 style: ElevatedButton.styleFrom(
                 primary: Colors.black,
                 textStyle: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(30),
                 ),
                 elevation: 30,
                 shadowColor: Colors.blue,
                 side: BorderSide(color: Colors.indigo,width: 5),
               ),
             ),
           ],
         ),
      ),


      // body: Center(
      //   child: Center(
      //     child:ConstrainedBox(
      //       constraints: BoxConstraints.tightFor(height: 100 , width: 100),
      //       child: ElevatedButton(
      //         child: Text("button"),
      //         onPressed: (){},
      //         style: ElevatedButton.styleFrom(
      //           primary: Colors.indigo,
      //           textStyle: TextStyle(fontSize: 25,fontStyle: FontStyle.italic),
      //           elevation: 26,
      //           shadowColor: Colors.red,
      //           side: BorderSide(color: Colors.black,width: 10),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),


    );
  }
}
