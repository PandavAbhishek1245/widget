import 'package:flutter/material.dart';

class GridviewDemo extends StatefulWidget {
  const GridviewDemo({Key? key}) : super(key: key);

  @override
  State<GridviewDemo> createState() => _GridviewDemoState();
}

class _GridviewDemoState extends State<GridviewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview"),
      ),


      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
      //
        scrollDirection: Axis.vertical,
        children: [
          Image(image: NetworkImage("https://picsum.photos/250?image=1"),),
          Image(image: NetworkImage("https://picsum.photos/250?image=2"),),
          Image(image: NetworkImage("https://picsum.photos/250?image=3"),),
          Image(image: NetworkImage("https://picsum.photos/250?image=4"),),
          Image(image: NetworkImage("https://picsum.photos/250?image=5"),),
          Image(image: NetworkImage("https://picsum.photos/250?image=6"),),
          Image(image: NetworkImage("https://picsum.photos/250?image=7"),),
          Image(image: NetworkImage("https://picsum.photos/250?image=8"),),
          Image(image: NetworkImage("https://picsum.photos/250?image=9"),),
          Image(image: NetworkImage("https://picsum.photos/250?image=10"),),
          Image(image: NetworkImage("https://picsum.photos/250?image=11"),),
          Image(image: NetworkImage("https://picsum.photos/250?image=12"),),
          Image(image: NetworkImage("https://picsum.photos/250?image=13"),),
          Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqHvYi53ys3nmY4Jc4IKFBpRzmY6-rvEzESA&usqp=CAU"),),
          Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnZc4nu61fo87fwxBfVNGokRj1TP8t6IrdEQ&usqp=CAU"),fit: BoxFit.fill),
          Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkQDIfOuSLBdsibcUHhT1TteMkO1VzJhGPfg&usqp=CAU"),fit: BoxFit.cover,),
          Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS75ebrwvgVW5Ks_oLfCbG8Httf3_9g-Ynl_Q&usqp=CAU"),fit: BoxFit.fitHeight),
          Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2jsdSvPiY8i_k-5sHiSGjvCdNbt6wGWew8g&usqp=CAU"),fit: BoxFit.fitWidth,),

        ],
      ),



    );
  }
}
