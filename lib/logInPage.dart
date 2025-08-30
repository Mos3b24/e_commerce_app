import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperlink/hyperlink.dart';

class logInPage extends StatefulWidget {
  const logInPage({super.key});

  @override
  State<logInPage> createState() => _logInPageState();
}

class _logInPageState extends State<logInPage> {
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();

  void _continue() {
    if (_formKey.currentState!.validate()){
      Navigator.pushNamed(context, '/completeProfile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              AppBar(
                leading: BackButton(),
              ),

              SizedBox(height: 40,),

              Text("Welcome Back", style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold),
                  ),

              Text("Sign in with your email and password\n or continue with social media",  
              textAlign: TextAlign.center,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 70, 30, 0),
                child: Column(
                  children: [

                    Container(
                      child: Column(
                      children: [

                        Form(
                          key: _formKey,
                          child: Column(
                            children: [

                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  hintText: "Enter your email",
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),
                                  suffixIcon: Icon(Icons.person_outline_rounded),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                ),
                                validator: (v) => v == null || !v.contains("@") ? "Invalid email" : null,
                              ),

                              SizedBox(height: 25,),

                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  hintText: "Enter your password",
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),
                                  suffixIcon: Icon(Icons.person_outline_rounded),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                ),
                                validator: (v) => v == null || v.length < 7 ? "Password must be at least 7 characters" : null,
                              ),

                              SizedBox(height: 25,),
                            ],
                          ),
                        ),
                      ],
                     ),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(30, 25, 30, 0),
                child: Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      activeColor: Color(0xfffb7a43),
                    ),
                    Text("Remember me"),

                    SizedBox(width: 75,),

                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/forgotPassword');
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 25,),


              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: _continue,
                  child: Text("Continue"),
                  
                  style:
                  ElevatedButton.styleFrom(

                    backgroundColor: Color(0xfffb7a43),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(color: Colors.white, fontSize: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 45,),

              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            shape: CircleBorder(),
                            backgroundColor: Colors.white
                        ),
                        child:
                        SvgPicture.asset (
                          "asset/icons/google-icon.svg",
                        )
                    ),

                    TextButton(onPressed: (){},

                      style: TextButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.white
                      ),
                      child:
                      SvgPicture.asset (
                        "asset/icons/facebook-2.svg",
                      ),
                    ),

                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            shape: CircleBorder(),
                            backgroundColor: Colors.white
                        ),
                        child:
                        SvgPicture.asset (
                          "asset/icons/twitter.svg",
                        )
                    )
                  ],
                ),
              ),

              SizedBox(height: 30,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?", style: TextStyle(fontSize: 15),),

                    SizedBox(width: 10,),

                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/RegisterAccount');
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xfffb7a43),  fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}