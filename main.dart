import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:widget/image_page.dart';

import 'appbar_demo.dart';
import 'bottombar_screen.dart';
import 'container_demo.dart';
import 'elevatedbutton_demo.dart';
import 'gridview_demo.dart';
import 'text.dart';
import 'listview_demo.dart';
import 'logo.dart';
import 'login_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: LoginpageDemo(),
          );
        },
    );
}

