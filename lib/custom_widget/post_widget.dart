import 'package:flutter/material.dart';

Widget getBlogPost(String imageName, String title) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: Image(
          image: AssetImage('images/$imageName'),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        '$title',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'فروش روی : 15،942',
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.sell,
            color: Colors.red,
            size: 18,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'خرید روی : 12،436',
            style: TextStyle(color: Colors.green),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.green,
            size: 18,
          ),
        ],
      ),
      Container(
        width: 300,
        child: Divider(
          color: Colors.black,
          thickness: 1.5,
          height: 5,
        ),
      ),
      SizedBox(
        height: 6,
      ),
    ],
  );
}
