import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class containerDemo extends StatefulWidget {
  const containerDemo({Key? key}) : super(key: key);

  @override
  State<containerDemo> createState() => _containerDemoState();
}

class _containerDemoState extends State<containerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conainer"),
      ),


      // body: Center(
      //   child: Row(
      //     children: [
      //       Expanded(
      //         child: Column(
      //           children: [
      //             Image.asset('assets/j.png',fit: BoxFit.contain),
      //             SizedBox(height: 20.0),
      //             Image.asset('assets/j.png',fit: BoxFit.contain),
      //             SizedBox(height: 20.0),
      //             Image.asset('assets/j.png',fit: BoxFit.contain),
      //           ],
      //         ),
      //       ),
      //       Expanded(
      //         child: Column(
      //           children: [
      //             Image.asset('assets/j.png',fit: BoxFit.contain),
      //             SizedBox(height: 20.0),
      //             Image.asset('assets/j.png',fit: BoxFit.contain),
      //             SizedBox(height: 20.0),
      //             Image.asset('assets/j.png',fit: BoxFit.contain),
      //           ],
      //         ),
      //       ),
      //       Expanded(
      //           child: Column(
      //             children: [
      //               Image.asset('assets/j.png',fit: BoxFit.contain),
      //               SizedBox(height: 20.0),
      //               Image.asset('assets/j.png',fit: BoxFit.contain),
      //               SizedBox(height: 20.0),
      //               Image.asset('assets/j.png',fit: BoxFit.contain),
      //             ],
      //           )
      //       )
      //
      //     ],
      //   ),
      // ),




        body: Column(
        children: [
          Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://miro.medium.com/max/1400/1*u6wsaofSWkZG4_-7vGto2g.png"),fit: BoxFit.fill),
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/j.png"),fit: BoxFit.fill),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),






      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //       height: 100,
      //       width: 200,
      //       color: Colors.redAccent,
      //       child: Center(child: Text('Hello')),
      //       margin: EdgeInsets.all(5),
      //       padding: EdgeInsets.all(5),
      //     ),
      //
      //     SizedBox(height: 15,),
      //     Row(
      //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //      crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.red,
      //           child: Center(child: Text('Hello')),
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.green,
      //           child: Column(
      //             children: [
      //               Center(
      //                 child: Container(
      //                   height: 40,
      //                   width: 60,
      //                   child: Center(child: Text('hello')),
      //                   decoration: BoxDecoration(
      //                     color: Colors.deepPurple,
      //                     borderRadius: BorderRadius.circular(20),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           width: 70,
      //           color: Colors.yellow,
      //         child: Row(
      //           children: [
      //             Center(
      //               child: Container(
      //                 height: 50,
      //                 width: 50,
      //                 decoration: BoxDecoration(
      //                   color: Colors.black,
      //                   borderRadius: BorderRadius.circular(100),
      //                 ),
      //
      //               ),
      //             )
      //           ],
      //         ),
      //         ),
      //         Container(
      //           height: 100,
      //           width: 70,
      //           color: Colors.cyan,
      //           child: Column(
      //             children: [
      //               Center(
      //                 child: Container(
      //                   height: 50,
      //                   width: 40,
      //                   color: Colors.black,
      //                 ),
      //               )
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //     SizedBox(height: 35,),
      //     Center(
      //        child: Container(
      //          height: 400,
      //          width: 600,
      //         decoration: BoxDecoration(
      //              borderRadius: BorderRadius.circular(40),
      //           color: Colors.red,
      //           image: DecorationImage(image: NetworkImage("https://miro.medium.com/max/1400/1*u6wsaofSWkZG4_-7vGto2g.png"),fit: BoxFit.fill)
      //           // boxShadow: [BoxShadow(color: Colors.red),],
      //         ),
      //
      //       ),
      //     ),
      //   ],
      // ),

    );
  }
}
