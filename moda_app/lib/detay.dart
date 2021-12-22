// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  String imgPath;

  Detay({Key? key, required this.imgPath}) : super(key: key);

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 15,
            right: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        //resim
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: const DecorationImage(
                                    image: AssetImage('assets/dress.jpg'),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        //yazılar
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('LAMINATED',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text('Louis vuitton',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    color: Colors.grey)),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width - 180,
                              child: Text(
                                  'One button V-neck sling long-sleeved waist female stitching dress',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      color: Colors.grey)),
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$6500',
                              style: TextStyle(
                                  fontFamily: 'Montserrat', fontSize: 22)),
                          CircleAvatar(
                              maxRadius: 16,
                              backgroundColor: Colors.brown,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
