import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Hotels extends StatelessWidget {
  Hotels(
      {required this.pic,
      required this.name,
      required this.location,
      required this.price,
      required this.evaluation});
  String pic;
  String name;
  String evaluation;
  String location;
  String price;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), topLeft: Radius.circular(12)),
          child: Image.asset('$pic'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            children: [
              Text(
                '$name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 60,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text(
                '$evaluation',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Text(
          '$location',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$price',
                style: TextStyle(
                    color: Color(0xff4C4DDC), fontWeight: FontWeight.bold),
              ),
              Text(
                '/night',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
