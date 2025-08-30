import 'dart:io';
import 'package:e_commerce_app/mainScreen.dart';
import 'package:e_commerce_app/OTP.dart';
import 'package:e_commerce_app/completeProfile.dart';
import 'package:e_commerce_app/forgotPassword.dart';
import 'package:e_commerce_app/logInPage.dart';
import 'package:e_commerce_app/registerAccount.dart';
import 'package:e_commerce_app/splashPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperlink/hyperlink.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashPage(),
      routes: {
        '/logInPage': (context) => const logInPage(),
        '/completeProfile': (context) => const completeProfile(),
        '/forgotPassword': (context) => const forgotPassword(),
        '/splashPage': (context) => const splashPage(),
        '/RegisterAccount': (context) => const RegisterAccount(),
        '/OTP': (context) => const OTP(),
        '/mainScreen': (context) => const mainScreen(),
        },
    );
  }
}

class splashPage extends StatefulWidget {
  const splashPage({super.key});

  @override
  State<splashPage> createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: Column(
            children: [
              SafeArea(child:
              Container(
                child: const Text(''),
              )),
              Text("TOKOTO", style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color(0xfffb7a43),
              ),),
              Text("Welcome to Tokoto, Let's shop!", style: TextStyle(
                fontSize: 18,
              ),),

              SizedBox(height: 60,),

              Image.asset(
                'asset/image/splash_1.png',
                width: 250,
                height: 300,
              ),

              SizedBox(height: 150,),

              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(onPressed:(){
                  Navigator.pushNamed(context, '/logInPage');
                }, child:
                Text("Continue"),
                  style:
                  ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfffb7a43),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(color: Colors.white, fontSize: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}