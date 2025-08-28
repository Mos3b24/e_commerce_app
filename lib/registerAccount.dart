import 'package:e_commerce_app/completeProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterAccount extends StatefulWidget {
  const RegisterAccount({super.key});

  @override
  State<RegisterAccount> createState() => _RegisterAccountState();
}

class _RegisterAccountState extends State<RegisterAccount> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                "Register Account",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Complete your details or continue\n with social media",
                textAlign: TextAlign.center,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 70, 30, 0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Enter your email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        suffixIcon: const Icon(Icons.email_outlined),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    const SizedBox(height: 25),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        suffixIcon: const Icon(Icons.lock_outline_rounded),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    const SizedBox(height: 25),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                        hintText: "Re-enter your password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        suffixIcon: const Icon(Icons.lock_outline_rounded),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/completeProfile');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfffb7a43),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(color: Colors.white, fontSize: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text("Continue"),
                ),
              ),

              const SizedBox(height: 45),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: Colors.white,
                      ),
                      child: SvgPicture.asset(
                        "asset/icons/google-icon.svg",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: Colors.white,
                      ),
                      child: SvgPicture.asset(
                        "asset/icons/facebook-2.svg",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: Colors.white,
                      ),
                      child: SvgPicture.asset(
                        "asset/icons/twitter.svg",
                      ),
                    ),
                  ],
                ),

              const SizedBox(height: 25),

              const Padding(
                padding: EdgeInsets.only(top: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By continuing you confirm that you agree",
                      textAlign: TextAlign.center,
                    ),
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
