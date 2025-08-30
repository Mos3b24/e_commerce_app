import 'package:flutter/material.dart';

/*void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainScreen(),
    );
  }
}
*/
class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        
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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff4b3298),
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A Summer Surprise",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.flash_on, color: Colors.deepOrange),
                      ),
                  SizedBox(height: 8,),
                  Text("Flash\nDeal", textAlign: TextAlign.center),
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.receipt_long, color: Colors.deepOrange),
                      ),
                      SizedBox(height: 8,),
                      Text("Bill", textAlign: TextAlign.center),
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.videogame_asset, color: Colors.deepOrange),
                      ),
                  SizedBox(height: 8,),
                  Text("Game", textAlign: TextAlign.center),                      
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.card_giftcard, color: Colors.deepOrange),
                      ),
                      SizedBox(height: 8,),
                      Text("Daily\nGift", textAlign: TextAlign.center),
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.more_horiz, color: Colors.deepOrange),
                      ),
                      SizedBox(height: 8,),
                      Text("More", textAlign: TextAlign.center),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),

          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xfffb7a43),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}