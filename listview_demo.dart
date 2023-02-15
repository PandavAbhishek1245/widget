import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:widget/image_page.dart';

class ListviewDemo extends StatefulWidget {
  const ListviewDemo({Key? key}) : super(key: key);
  @override
  State<ListviewDemo> createState() => _ListviewDemoState();
}

class _ListviewDemoState extends State<ListviewDemo> {

  var nameList=['abhishek','dhaval','nishant','khushal','keval','sanket','avkash','satish','mayur'];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(title: Text("Listview"),),

        body: Column(
          children: [
            Container(
              height: 580,
              width: 395,
              child: ListView.builder(
                itemCount: nameList.length,
                  itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageDemo(name:nameList[index]!))); //name argument
                  },
                  child: Card(
                    color: index.isEven?Colors.deepPurpleAccent:Colors.green,
                    child: ListTile(
                      title: Text(index.toString(),),
                    ),
                  ),
                );
              },
              ),
            ),
          ],
        ),




        // ListView.builder(
        //   itemCount: 10,
        //     itemBuilder: (context,index){
        //   return Center(
        //       child: Container(
        //         height: 10.h,
        //           width: 90.w,
        //           color: Colors.cyan.withOpacity(0.3),
        //           child: Center(child: Text("abhishek")),),
        //   );
        // })







      //   body: ListView.separated(
      //   scrollDirection: Axis.vertical,
      //     itemBuilder: (context,index){
      //   return Center(
      //     child: Padding(
      //       padding: const EdgeInsets.all(5.0),
      //       child: Container(
      //         height: 10.h,
      //         width: 95.w,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: index.isEven ? Colors.red:Colors.yellow,
      //         ),
      //         child: Row(
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: CircleAvatar(
      //                 maxRadius: 35,
      //                 backgroundColor: Colors.white,
      //                 child: Icon(Icons.person,color: Colors.black,size: 50,),
      //               ),
      //             ),
      //             Column(
      //               children: [
      //                 Text("index $index"),
      //                 SizedBox(height: 10,),
      //
      //                 Text("name:",style: TextStyle(fontWeight: FontWeight.bold),),
      //
      //                 SizedBox(height: 3,),
      //                 Text("Mo.",style: TextStyle(fontWeight: FontWeight.bold),),
      //               ],
      //             ),
      //
      //             SizedBox(width: 200,),
      //             Icon(Icons.delete),
      //           ],
      //         ),
      //         // color: Colors.yellow.withOpacity(0.3),
      //         // child: Center(child: Text("1")),
      //         // child: Center(child: Text(index.toString())),
      //         // child: Center(child: Text("text $index")),
      //       ),
      //     ),
      //   );
      // }, separatorBuilder: (context,index){return SizedBox(height: 1.h,);}, itemCount: nameList.length),








      // body:  ListView.separated(
      //
      //     itemBuilder: (context,positon){
      //   return Card(
      //     color: Colors.black12,
      //     child: ListTile(
      //       title: Column(
      //         children: [
      //           Row(
      //             children: [
      //               Column(
      //                 children: [
      //                   Text(positon.toString()),
      //                   Text("sfsds"),
      //                 ],
      //               ),
      //               SizedBox(width: 20),
      //               Column(
      //                 children: [
      //                   Text("ewwwd"),
      //                   Text("hhhhhh"),
      //                 ],
      //               ),
      //               SizedBox(width: 20),
      //               Text("ddfddd"),
      //             ],
      //           ),
      //         ],
      //       ),
      //       leading: Icon(Icons.accessibility),
      //     ),
      //   );
      // }, separatorBuilder: (context,position){
      //   return Card(
      //     color: Colors.red,
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text("sssss $position"),
      //   ),
      // );
      //   }, itemCount: 10),





    ),
    );
  }
}
