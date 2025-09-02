import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: profile(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Profile"),  
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Container(   
              decoration: BoxDecoration(
                color: Color(0xfffb7a43),
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
              padding: EdgeInsets.all(3),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("asset/image/Profile Image.png"),                
              ),
            ),

            

            SizedBox(height: 20),

            Text(
              "Musaab Al-Rabie",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 25),            

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:  8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,              
                children: [
                  
                  Row(
                    children: [
                      Text("Phone",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                  
                      SizedBox(width: 150),
                  
                      Text("+962 770 123 4567",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                    ),
              
                    SizedBox(height: 10),
              
                  Row(
                    children: [
                      Text("Email",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
              
                      SizedBox(width: 150),
              
                      Text("Musaab@gmail.com",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                    ),
                ],
                ),
            ),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Column(
                  children: [
                    Text("16",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Orders",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),

                SizedBox(width: 25),

                Column(
                  children: [
                    Text("8",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Wishlist",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),

                SizedBox(width: 25),

                Column(
                  children: [
                    Text("20",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Coupons",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 25),
              ],
            ),

            SizedBox(height: 5),
            
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Profile details"),
                  
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

              SizedBox(height: 10),

              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){},                  
                  child: Text("Settings"),
                  
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

              SizedBox(height: 10),

              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Log out"),
                  
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
            
                 
          ],
        ),
      )
    );
  }
}