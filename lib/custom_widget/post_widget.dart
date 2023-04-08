import 'package:flutter/material.dart';

Widget getBlogPost(
    {required String image,
    required String Date,
    required String Buy,
    required String Sell}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image(
            image: AssetImage('images/$image'),
          ),
        ),
      ),
      SizedBox(height: 6),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Date :  ',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            '$Date',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 6, 124, 220)),
          ),
        ],
      ),
      SizedBox(height: 6),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.sell_rounded,
            size: 15,
          ),

          // Buy

          Text(
            'Buy: ',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            '$Buy',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 3, 120, 7),
                fontWeight: FontWeight.w800),
          ),
          SizedBox(width: 50),
          Icon(
            Icons.sell_rounded,
            size: 15,
          ),

          // Sell

          Text(
            'Sell: ',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            '$Sell',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
          ),
        ],
      ),
      Container(
        width: 300,
        child: Divider(
          color: Colors.black,
          thickness: 2,
        ),
      ),
    ],
  );
}
