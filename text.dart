import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // body:Center(
      //  // children: [
      // child:  Text(
      //     'Hello, abhishek ! How are you?',
      //     textAlign: TextAlign.center,
      //     overflow: TextOverflow.ellipsis,
      //     style: const TextStyle(fontWeight: FontWeight.bold),
      //   ),
      // // ],
      // ),





      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Hello World bghablgkbalgbdklfbgkldbglahkgvklbdghvbgkabglajkgvlahglahvglabgahgbaklgbalhsbgakldsbgkadsbgakbgakbgakdsb',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
