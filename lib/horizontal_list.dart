import 'package:flutter/material.dart';
import 'package:ok/books.dart';
import 'package:ok/detail_screen.dart';

class Horizontal_list extends StatelessWidget {
  final int index;

  const Horizontal_list(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(Details_Screen.routeName, arguments: {
            'id': bookList[index].id,
            'title': bookList[index].title,
            'imageUrl': bookList[index].imageUrl,
            'description': bookList[index].description,
            'author': bookList[index].author,
            'year': bookList[index].year,
            'pdf': bookList[index].pdfUrl
          });
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Hero(
                tag: bookList[index].id,
                child: Container(
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(bookList[index].imageUrl)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              bookList[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

class Horizontal_list1 extends StatelessWidget {
  final int index;

  const Horizontal_list1(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(Details_Screen.routeName, arguments: {
            'id': bestsellers[index].id,
            'title': bestsellers[index].title,
            'imageUrl': bestsellers[index].imageUrl,
            'description': bestsellers[index].description,
            'author': bestsellers[index].author,
            'year': bestsellers[index].year,
          });
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Hero(
                tag: bestsellers[index].id,
                child: Container(
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(bestsellers[index].imageUrl)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              bookList[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

class Horizontal_list2 extends StatelessWidget {
  final int index;

  const Horizontal_list2(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(Details_Screen.routeName, arguments: {
            'id': foryou[index].id,
            'title': foryou[index].title,
            'imageUrl': foryou[index].imageUrl,
            'description': foryou[index].description,
            'author': foryou[index].author,
            'year': foryou[index].year,
          });
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Hero(
                tag: foryou[index].id,
                child: Container(
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(foryou[index].imageUrl)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              bookList[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
