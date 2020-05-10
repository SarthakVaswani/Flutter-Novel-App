import 'package:flutter/material.dart';
import 'books.dart';
import 'widgets.dart';
import 'horizontal_list.dart';

class Next extends StatefulWidget {
  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Novel App',
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: <Widget>[
          IconButton(
            icon: LineartGradientMask(
              child: Icon(
                Icons.search,
                size: 40,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10)),
            Text('For PotterHeads',
                style: Theme.of(context).textTheme.subtitle2),
            Container(
              height: 280,
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bookList.length,
                itemBuilder: (context, index) => Horizontal_list(index),
                // children: <Widget>[
                //   Horizontal_list(),
                //   Horizontal_list(),
                //   Horizontal_list(),
                // ]
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            Text('BestSellers', style: Theme.of(context).textTheme.subtitle2),
            Container(
              height: 280,
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: bestsellers.length,
                itemBuilder: (context, index) => Horizontal_list1(index),
                scrollDirection: Axis.horizontal,
                // children: <Widget>[
                //   Horizontal_list(index),
                //   Horizontal_list(index),
                //   Horizontal_list(),
              ),
            ),
            Text('For You', style: Theme.of(context).textTheme.subtitle2),
            Container(
              height: 280,
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foryou.length,
                  itemBuilder: (context, index) => Horizontal_list2(index)
                  // children: <Widget>[
                  //   Horizontal_list(),
                  //   Horizontal_list(),
                  //   Horizontal_list(),
                  // ],
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
