import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final String date;
  final String title;
  final String subtitle;
  final String image;
  PageWidget(
      {required this.date,
      required this.subtitle,
      required this.title,
      required this.image});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Container(child: Image.network('$image')
                  // Image.asset('assets/images/demo-vector-21910012.jpg'),
                  ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40.0,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      '${date}',
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      '${title}',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      '${subtitle}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
