import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main () {
  runApp(myApp());
}

class myhome extends StatelessWidget {
  const myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: 
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search Products",
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search_rounded,),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              //border: Border.all(none),
            ),
          ),
        ),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined),),  
          SizedBox(width: 10,),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined),),
          SizedBox(width: 10,),
        ],
      ),

           bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xfffb7a43),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
          });
        },
 items: [
    BottomNavigationBarItem(
      icon: Image.asset(
        'asset/icons/bag.svg',
        height: 24,
        width: 24,
        color: Colors.grey, // Unselected color
      ),
      activeIcon: Image.asset(
        'asset/icons/bag.svg',
        height: 24,
        width: 24,
        color: const Color(0xfffb7a43), // Selected color
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'asset/icons/heart.svg',
        height: 24,
        width: 24,
        color: Colors.grey,
      ),
      activeIcon: Image.asset(
        'asset/icons/heart.svg',
        height: 24,
        width: 24,
        color: const Color(0xfffb7a43),
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'asset/icons/Shop Icon.svg',
        height: 24,
        width: 24,
        color: Colors.grey,
      ),
      activeIcon: Image.asset(
        'asset/icons/Heart Icon.svg',
        height: 24,
        width: 24,
        color: const Color(0xfffb7a43),
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'asset/icons/Chat bubble Icon.svg',
        height: 24,
        width: 24,
        color: Colors.grey,
      ),
      activeIcon: Image.asset(
        'asset/icons/User.svg',
        height: 24,
        width: 24,
        color: const Color(0xfffb7a43),
      ),
      label: '',
    ),
  ],
      ),

      body:
      Center(
        child: Column(
          children: [

            SizedBox(height: 20,),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15),
  child: Container(
    height: 120, // Fixed height for a clean design
    width: double.infinity, // Full width, but not full height
    decoration: BoxDecoration(
      color: const Color(0xff4b3298), // Corrected the color code
      borderRadius: BorderRadius.circular(15), // Rounded corners for better UI
    ),

    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "A Summer Surprise",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),

          SizedBox(height: 8),

          Text(
            "Cashback 20%",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  ),
),
SizedBox(height: 20,),

            
          Padding(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF3E0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.flash_on, color: Colors.deepOrange),
                ),
                SizedBox(height: 8),
                Text("Flash\nDeal", textAlign: TextAlign.center),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF3E0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.receipt_long, color: Colors.deepOrange),
                ),
                SizedBox(height: 8),
                Text("Bill"),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF3E0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.videogame_asset, color: Colors.deepOrange),
                ),
                SizedBox(height: 8),
                Text("Game"),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF3E0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.card_giftcard, color: Colors.deepOrange),
                ),
                SizedBox(height: 8),
                Text("Daily\nGift", textAlign: TextAlign.center),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF3E0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.more_horiz, color: Colors.deepOrange),
                ),
                SizedBox(height: 8),
                Text("More"),
              ],
            ),
          ],
        ),
      )
          ],
        ),
      ),
    );
    
  }
}