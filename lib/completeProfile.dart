import 'package:e_commerce_app/OTP.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class completeProfile extends StatefulWidget {
  const completeProfile({super.key});

  @override
  State<completeProfile> createState() => _completeProfileState();
}

class _completeProfileState extends State<completeProfile> {
  bool isChecked = false;
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
              Text("Complete Profile", style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold),),
              Text("Complete your details or continue\n with social media",  textAlign: TextAlign.center,),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 70, 30, 0),
                child: Column(
                  children: [

                    TextField(
                      decoration: InputDecoration(
                        labelText: "First Name",
                        hintText: "Enter your First Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset("asset/icons/User.svg",
                            width: 24,
                            height: 24,
                          ),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),


                    SizedBox(height: 25,),

                    TextField(
                      decoration: InputDecoration(
                        labelText: "Last Name",
                        hintText: "Enter your Last Name",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset("asset/icons/User.svg",
                            width: 24,
                            height: 24,
                          ),
                        ),                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),

                    SizedBox(height: 25,),

                    TextField(
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        hintText: "Enter your phone number",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset("asset/icons/Phone.svg",
                            width: 24,
                            height: 24,
                          ),
                        ),                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),

                    SizedBox(height: 25,),

                    TextField(
                      decoration: InputDecoration(
                        labelText: "Address",
                        hintText: "Enter your phone address",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset("asset/icons/Location point.svg",
                            width: 24,
                            height: 24,
                          ),
                        ),                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40,),


              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(onPressed:(){

                  Navigator.pushNamed(context, '/OTP');
                }, child:
                Text("continue"),
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

              SizedBox(height: 25,),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Text(
                        "By continuing your confirm that you agree\n with our Term and Condition",
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}