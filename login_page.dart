import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'appbar_demo.dart';

class LoginpageDemo extends StatefulWidget {
  const LoginpageDemo({Key? key}) : super(key: key);

  @override
  State<LoginpageDemo> createState() => _LoginpageDemoState();
}

class _LoginpageDemoState extends State<LoginpageDemo> {

  var unnameController=TextEditingController();
  var passswordcontroller=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool ishiddenpassward = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffebebeb),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key:_formKey,
            child:  Column(
             children: [
            SizedBox(height: 7.h),
            Row(
              children: [
                Container(
                  height: 7.h,
                  width: 15.w,
                  color: Color(0xff96989b),
                  child: Icon(Icons.arrow_back_ios),
                ),
              ],
            ),

            SizedBox(height: 2.h),

            Row(
              children: [
                SizedBox(width: 5.w),
                Container(
                  child:Text("Hello Again!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff03195b)),),
                ),
              ],
            ),
            SizedBox(height:5),

            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  child:Text("Welcome",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff03195b)),),
                ),
              ],
            ),
            SizedBox(height:5),

            Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  child:Text("back",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff03195b)),),
                ),
              ],
            ),
            SizedBox(height:20),

            TextFormField(
              obscureText: false,
              controller: unnameController,
              validator: (a){
                if(a!.isEmpty){
                  return 'enter email ';
                }
                else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(a!)){
                  return 'atlest valid email';
                }
              },
              decoration: InputDecoration(
                filled: true,
                  fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText:"Email address ",
                hintText: "enter email address ",
                labelStyle: TextStyle(fontSize:20, fontWeight: FontWeight.bold),
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
              ),

            ),

            SizedBox(height: 10),

            TextFormField(
              obscureText: ishiddenpassward,
              controller: passswordcontroller,
              validator: (a){
                if(a!.isEmpty){
                  return 'please enter passward';
                }
                else if (a.length<=9){
                  return 'atlest 9 character';
                }
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "passward",
                hintText: 'enter your passward',
                // suffixIcon: Icon(Icons.remove_red_eye,),

                suffixIcon: IconButton(
                  icon:Icon(ishiddenpassward ? Icons.security:Icons.remove_red_eye),
                  onPressed: (){
                  ishiddenpassward =! ishiddenpassward;
                  setState(() {
                  });
                  // print("ok");
                }, ),


              ),
            ),

            SizedBox(height: 15),

            GestureDetector(
              onTap:(){
                if(_formKey.currentState!.validate()){
                  signupWithFirebase();
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>AppbarDemo(),));
                }
              } ,
              child: Container(
                height: 40,
                width: 350,
                child: Center(child: Text("sign in ",style: TextStyle(fontSize: 20,color: Colors.white),),),
                decoration: BoxDecoration(
                  color: Color(0xff03195b),
                  borderRadius: BorderRadius.circular(5),
                ),
                // color: Colors.red,
              ),
            ),

            SizedBox(height: 25),

            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 22),
                  child: Text("Forget Your Passward ?"),
                ),
                SizedBox(width: 140),
                Text('Sign Up'),
              ],
            ),
            SizedBox(height: 30),

            Container(
              height: 35.h,
              width: 350.w,
              // color: Colors.cyan,
              child: Image.network("https://images.unsplash.com/photo-1611071512738-6dd137f8ff29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",fit: BoxFit.cover,),
            ),

          ],
        ),
          ),
        ),
      ),
    );
  }

  signupWithFirebase()async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "test1@gmail.com",
        password: "123456",
      );
      Navigator.push(context, MaterialPageRoute(builder: (context)=>AppbarDemo(),));

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

}
