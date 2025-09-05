import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: favorites(),
    );
  }
}

class favorites extends StatefulWidget {
  const favorites({super.key});

  @override
  State<favorites> createState() => _favoritesState();
}

class _favoritesState extends State<favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [

            Expanded(child:
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              
              padding: const EdgeInsets.all(10),
              
              children: [

              ],
            )
            ),

          ],
        ),
      ),
    );
  }
}

Widget chatTile (String name, String massage, String time, String imageUrl) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(imageUrl),
      radius: 30,
    ),
    title: Text(name),
    subtitle: Text(massage),
    trailing: Text(time),
  );
}