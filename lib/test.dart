import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final bool isFavorite;

  const ProductCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.price,
    this.isFavorite = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      margin: const EdgeInsets.only(right: 25), // space between items
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15), // rounded image corners
            child: Image.asset(
              imagePath,
             //height: 120,
              //width: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 40,
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Color(0xffffe7c4b),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: (){
                  //isFavorite = !isFavorite;
                }, 
                iconSize: 18,
                icon: isFavorite
                ? Icon(Icons.favorite, color: Colors.red)
                : Icon(Icons.favorite, color: Colors.grey),
                
                ),
              // SvgPicture.asset(
              //   isFavorite
              //       ? 'asset/icons/Heart Icon_2.svg' // filled heart for favorites
              //       : 'asset/icons/Heart Icon.svg',  // normal heart
              //   height: 18,
              //   width: 18,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}